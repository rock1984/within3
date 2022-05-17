import createConnection from './database';
import { createApolloServer } from "./server";

export const connection = (async () => await createConnection())();

createApolloServer();