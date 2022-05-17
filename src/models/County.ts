import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity('counties')
class County {

    @PrimaryGeneratedColumn('increment')
    id: number;

    @Column()
    name: string;

}

export default County;