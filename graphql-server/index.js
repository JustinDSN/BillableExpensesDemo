const { ApolloServer } = require('apollo-server');

const typeDefs = `
type Query {
  hello: String
  billableSearch(searchTerm: String): [BillableSearchResult]
  billableSearch2(searchTerm: String): BillableSearchResult2
  billableSearch3(searchTerm: String): [SearchResults]
  customerSearch(searchTerm: String): CustomerSearchResult
  projectSearch(searchTerm: String): ProjectSearchResult
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

union BillableSearchResult = CustomerSearchResult | ProjectSearchResult

type CustomerSearchResult implements HasErrors {
  items: [Customer]
  errors: [Error]
}

type ProjectSearchResult implements HasErrors {
  items: [Project]
  errors: [Error]
}

union SearchResult = Project | Customer

type SearchResults implements HasErrors {
  items: [SearchResult]
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

type BillableSearchResult2 {
  customers: CustomerSearchResult
  projects: ProjectSearchResult
}



`;

const server = new ApolloServer({
  typeDefs,
  mocks: true,
});

server.listen().then(({ url }) => {
  console.log(`🚀 Server ready at ${url}`)
});