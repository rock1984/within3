import { MigrationInterface, QueryRunner, Table, TableForeignKey } from "typeorm";

export class CreateZipCodes1652667196631 implements MigrationInterface {

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.createTable(new Table({
            name: 'zip_codes',
            columns: [
                {
                    name: 'id',
                    type: 'int',
                    isPrimary: true,
                    generationStrategy: 'increment',
                },
                {
                    name: 'zip_code',
                    type: 'int',
                    isNullable: false
                },
                {
                    name: 'county_id',
                    type: 'int',
                    isNullable: false
                },
                {
                    name: 'city_id',
                    type: 'int',
                    isNullable: false
                },
            ]
        }));
        await queryRunner.createForeignKey('zip_codes', new TableForeignKey({
            name: 'ZipCodesCounty',
            columnNames: ['county_id'],
            referencedColumnNames: ['id'],
            referencedTableName: 'counties',
            onDelete: 'SET NULL',
            onUpdate: 'CASCADE'
        }));
        await queryRunner.createForeignKey('zip_codes', new TableForeignKey({
            name: 'ZipCodesCity',
            columnNames: ['city_id'],
            referencedColumnNames: ['id'],
            referencedTableName: 'cities',
            onDelete: 'SET NULL',
            onUpdate: 'CASCADE'
        }));
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.dropForeignKey('zip_codes', 'ZipCodesCounty')
        await queryRunner.dropForeignKey('zip_codes', 'ZipCodesCity')
        await queryRunner.dropTable('zip_codes');
    }

}
