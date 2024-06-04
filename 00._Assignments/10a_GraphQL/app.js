import {ApolloServer} from "apollo-server";
import fs from "fs";
import {resolvers} from "./resolvers.js";

const typeDefs = fs.readFileSync('./schema.graphql', 'utf-8');

const server = new ApolloServer({typeDefs, resolvers});

server.listen().then(({ url }) => {
    console.log(`Server ready at ${url}`);
})