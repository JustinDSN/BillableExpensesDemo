import Apollo

extension ApolloClient {
  static var createClient: ApolloClient {
    return ApolloClient(url: URL(string: "http://localhost:4000/graphql")!)
  }
}
