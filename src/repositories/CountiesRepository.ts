import County from '../models/County';
import { EntityRepository, Repository } from 'typeorm';
import City from '../models/City';

@EntityRepository(County)
class CountiesRepository extends Repository<County> {

}

export default CountiesRepository;