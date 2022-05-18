
import { EntityRepository, Repository } from 'typeorm';
import ZipCode from '../models/ZipCode';
const { UserInputError } = require("apollo-server");

@EntityRepository(ZipCode)
class ZipCodesRepository extends Repository<ZipCode> {

    async findByZipCode(zipCode: number): Promise<ZipCode> {
        const zipCodeObj = await this.findOne({ zipCode });
        if (zipCodeObj) {
            return zipCodeObj;
        }
        throw new UserInputError('ZipCode not found');
    }

}

export default ZipCodesRepository;