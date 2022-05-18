import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity('cities')
class City {

    @PrimaryGeneratedColumn('increment')
    id: number;

    @Column()
    name: string;

}

export default City;