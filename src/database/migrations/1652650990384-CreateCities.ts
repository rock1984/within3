import { MigrationInterface, QueryRunner, Table, TableForeignKey } from "typeorm";

export class CreateCities1652650990384 implements MigrationInterface {

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.createTable(new Table({
            name: 'cities',
            columns: [
                {
                    name: 'id',
                    type: 'int',
                    isPrimary: true,
                    generationStrategy: 'increment',
                },
                {
                    name: 'name',
                    type: 'varchar',
                    isNullable: false
                }
                /*,
                {
                    name: 'county_id',
                    type: 'int',
                    isNullable: false
                }*/
            ]
        }));
        /*
        await queryRunner.createForeignKey('cities', new TableForeignKey({
            name: 'CitiesCounty',
            columnNames: ['county_id'],
            referencedColumnNames: ['id'],
            referencedTableName: 'counties',
            onDelete: 'SET NULL',
            onUpdate: 'CASCADE'
        }));*/
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        // await queryRunner.dropForeignKey('cities', 'CitiesCounty')
        await queryRunner.dropTable('cities');
    }

}
