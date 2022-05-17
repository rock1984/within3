import { createApolloServer } from '../src/server';
import createConnection from '../src/database';
import request from 'supertest';

jest.setTimeout(60000);

describe('e2e GraphQL API', () => {
  let server, url;
  let connection;

  // before the tests we will spin up a new Apollo Server
  beforeAll(async () => {
    connection = await createConnection();
    await connection.runMigrations();

    // We pass in the port as 0 to let the server pick its own ephemeral port for testing
    const serverInfo = await createApolloServer({ port: 0, connectionName: 'test' });
    ({ server, url } = serverInfo);
  });

  // after the tests we will stop our server
  afterAll(async () => {
    await connection.dropDatabase();
    await connection.close();
    await server?.close();
  });

  it('should let you query a zipCode', async () => {
    const queryData = {
      query: `query {
        zipCode(zipCode: 20601) {
          zipCode,
          county {
            name
          }
          city {
            name
          }
        }
      }`,
      variables: {},
    };

    const expectedZipCode = {
      zipCode: {
        zipCode: 20601,
        city: {
          name: `Waldorf`
        },
        county: {
          name: `Charles County`
        }
      }
    }

    const response = await request(url).post('/').send(queryData);
    expect(response.body.errors).toBeUndefined();
    expect(response.body.data).toEqual(expectedZipCode);
  });

  
  it('should return 404 if zipCode not found', async () => {
    const queryData = {
      query: `query {
        zipCode(zipCode: 20605) {
          zipCode,
          county {
            name
          }
          city {
            name
          }
        }
      }`,
      variables: {},
    };

    const response = await request(url).post('/').send(queryData);
    expect(response.status).toBe(404);
    expect(response.body.errors).toBeDefined();
  });

});