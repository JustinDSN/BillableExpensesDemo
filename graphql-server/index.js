const { ApolloServer } = require('apollo-server');

const typeDefs = `
type Query {
  customers(searchTerm: String): CustomerList
  projects(searchTerm: String): ProjectList
}

type Project {
  projectId: ID!
  projectName: String
  customerId: ID!
  customerName: String
}

type Customer {
  id: ID!
  name: String
  email: String
}

type CustomerList implements HasErrors {
  items: [Customer]
  errors: [Error]
}

type ProjectList implements HasErrors {
  items: [Project]
  errors: [Error]
}

interface HasErrors {
  errors: [Error]
}

interface Error {
  code: String!
  message: String!
}

type QueryError implements Error {
  code: String!
  message: String!
}
`;

const server = new ApolloServer({
  typeDefs,
  mocks: true,
});

server.listen().then(({ url }) => {
  console.log(`🚀 Server ready at ${url}`)
});