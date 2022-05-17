import { createConnection, getConnectionOptions, Connection } from 'typeorm';

export default async (name = 'default'): Promise<Connection> => {
    const defaultOptions = await getConnectionOptions(process.env.NODE_ENV === 'test' ? 'test': name);

    return createConnection(
        Object.assign(defaultOptions, {
            name: process.env.NODE_ENV === 'test' ? 'test': name,
            database:
                process.env.NODE_ENV === 'test'
                    ? 'within3_tests'
                    : defaultOptions.database,
        }),
    );
};
