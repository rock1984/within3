import { Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import County from './County';
import City from './City';

@Entity('zip_codes')
class ZipCode {

    @PrimaryGeneratedColumn('increment')
    id: number;

    @Column({ name: "zip_code" })
    zipCode: number;

    @Column()
    city_id: number;

    @ManyToOne(() => City, { eager: true })
    @JoinColumn({ name: 'city_id' })
    city: City;

    @Column()
    county_id: number;

    @ManyToOne(() => County, { eager: true })
    @JoinColumn({ name: 'county_id' })
    county: County;

}

export default ZipCode;