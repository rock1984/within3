import { Column, Entity, JoinColumn, ManyToOne, OneToMany, PrimaryGeneratedColumn } from 'typeorm';
import County from './County';

@Entity('cities')
class City {

    @PrimaryGeneratedColumn('increment')
    id: number;

    @Column()
    name: string;

    /*
    @Column()
    county_id: number;

    @ManyToOne(() => County, { eager: true })
    @JoinColumn({ name: 'county_id' })
    county: County;
    */

}

export default City;