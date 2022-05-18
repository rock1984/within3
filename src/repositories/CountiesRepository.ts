import County from '../models/County';
import { EntityRepository, Repository } from 'typeorm';

@EntityRepository(County)
class CountiesRepository extends Repository<County> {

}

export default CountiesRepository;