import {MigrationInterface, QueryRunner} from "typeorm";
import csvParse from 'csv-parse';
import fs from 'fs';
import City from "../../models/City";
import County from "../../models/County";

interface IZipCode {
    zipCode: number;
    cityId?: number;
    city: string;
    countyId?: number;
    county: string;
}

export class CreateTestSeeds1652757440154 implements MigrationInterface {

    public async up(queryRunner: QueryRunner): Promise<void> {
        const { zipCodes }= await this.readCSV('./src/database/data/Zip_Code_Lookup_Table.csv');
        const cities = {} as { [key: string]: City };
        let citiesCount = 0;
        const counties = {} as { [key: string]: County };
        let countiesCount = 0;
        let zipCodesCount = 0;

        await Promise.all(
            zipCodes.map(async zipCode => {
                if(!cities[zipCode.city]) {
                    cities[zipCode.city] = new City();
                    cities[zipCode.city].name = zipCode.city;
                    cities[zipCode.city].id = ++citiesCount;
                    await queryRunner.query(`INSERT INTO cities (id, name) VALUES (${cities[zipCode.city].id}, '${cities[zipCode.city].name.replace(`'`,`''`)}') ON CONFLICT (id) DO NOTHING`);
                }                
                zipCode.cityId = cities[zipCode.city].id;

                if(!counties[zipCode.county]) {
                    counties[zipCode.county] = new County();
                    counties[zipCode.county].name = zipCode.county;
                    counties[zipCode.county].id = ++countiesCount;
                    await queryRunner.query(`INSERT INTO counties (id, name) VALUES (${counties[zipCode.county].id}, '${counties[zipCode.county].name.replace(`'`,`''`)}') ON CONFLICT (id) DO NOTHING`);
                }
                zipCode.countyId = counties[zipCode.county].id;

                await queryRunner.query(`INSERT INTO zip_codes (id, zip_code, county_id, city_id) VALUES (${++zipCodesCount}, ${zipCode.zipCode}, ${zipCode.countyId}, ${zipCode.cityId}) ON CONFLICT (id) DO NOTHING`);
            })
        );
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`DELETE FROM zip_codes`);
        await queryRunner.query(`DELETE FROM counties`);
        await queryRunner.query(`DELETE FROM cities`);
    }
    
    private async readCSV(
        filePath: string,
    ): Promise<{ zipCodes: IZipCode[] }> {
        const readCSVStream = fs.createReadStream(filePath);
        const parseStream = csvParse({
        from_line: 2,
        ltrim: true,
        rtrim: true,
        });
        const parseCSV = readCSVStream.pipe(parseStream);
        const zipCodes: IZipCode[] = [];
        parseCSV.on('data', line => {
        const [zipCode, city, county] = line;

        if (!zipCode || !city || !county) {
            return;
        }

        zipCodes.push({ zipCode, city, county });
        });
        await new Promise(resolve => {
        parseCSV.on('end', resolve);
        });
        return { zipCodes };
    }

}
