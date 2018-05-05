# BillableExpensesDemo

Example application with a few options using the GraphQL type system to model Searching for Projects or Customers.

# graphql-server

A simple graphql server using ApolloServer with Mocks.

## Startup
```
cd graphql-server
npm install
node index.js
```

Browse to [http://localhost:4000] to see the GraphQL Playground.

# iOS

## Getting Started

```
cd iOS
pod install
```

## Experiment! 🔬🔭⚗️
* Open BillableExpensesDemo.xcworkspace with Xcode
* Open ViewController.swift to checkout the different options implemented.  
* The GraphQL (Schema, Queries, Generated API) related bits are found in the `GraphQL\` folder.
* You can use the comment line function to enable/disable the different options and see what the output is.
* Run the application to see the results in the debugger console.

# Regenerating the Schema
If you change the server's schema, you'll need to restart node (Ctrl + C to quit) and also regenerate the schema.json file that Apollo uses to generate the GraphQLAPI.swift file (found in `GraphQL\Generated`).

To regenerate:
1. Restart graphql-server
* From the root of the repo:
```
cd iOS/BillableExpensesDemo/GraphQL/Schema/
apollo-codegen introspect-schema http://localhost:4000
```
* Build & Run iOS Application (⚠️: If you made breaking changes to the schema, the build might fail)
