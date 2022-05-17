import { ApolloServer } from "apollo-server";
import { schema } from "./schema";
import { context } from "./context";
import setHttpPlugin from "./httpPlugin";

export const createApolloServer = async (options = { port: 3000, connectionName: 'default' }) => {
    context.connectionName = options.connectionName;

    const server = new ApolloServer({
        schema,
        context,
        plugins: [setHttpPlugin]
    });

    const serverInfo = await server.listen(options);
    if (process.env.NODE_ENV !== 'test') {
        console.log(
            `🚀 Query endpoint ready at http://localhost:${options.port}${server.graphqlPath}`,
        );
    }

    // serverInfo is an object containing the server instance and the url the server is listening on
    return serverInfo;
};