import { getCustomRepository } from 'typeorm';
import CountiesRepository from "./repositories/CountiesRepository";
import CitiesRepository from "./repositories/CitiesRepository";
import ZipCodesRepository from './repositories/ZipCodesRepository';

export interface Context {
    connectionName?: string;
    countiesRepository: () => CountiesRepository;
    citiesRepository: () => CitiesRepository;
    zipCodesRepository: () => ZipCodesRepository;
}

export const context: Context = {
    connectionName: 'default',
    countiesRepository: () => getCustomRepository(CountiesRepository, context.connectionName),
    citiesRepository: () => getCustomRepository(CitiesRepository, context.connectionName),
    zipCodesRepository: () => getCustomRepository(ZipCodesRepository, context.connectionName),
};
