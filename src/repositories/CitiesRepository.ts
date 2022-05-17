
import { EntityRepository, Repository } from 'typeorm';
import City from '../models/City';
import County from '../models/County';

@EntityRepository(City)
class CitiesRepository extends Repository<City> {

    /*
    findByCountyId(countyId: number): Promise<City[]> {
        return this.createQueryBuilder('city')
            .where('city.county_id = :countyId', { countyId })
            .getMany();
    }
    */

}

export default CitiesRepository;