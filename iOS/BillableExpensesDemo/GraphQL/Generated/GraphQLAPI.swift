//  This file was automatically generated and should not be edited.

import Apollo

public final class BillableSearchQuery: GraphQLQuery {
  public static let operationString =
    "query billableSearch {\n  billableSearch(searchTerm: \"hello\") {\n    __typename\n    ... on CustomerSearchResult {\n      items {\n        __typename\n        id\n        name\n      }\n      errors {\n        __typename\n        code\n        message\n      }\n    }\n    ... on ProjectSearchResult {\n      items {\n        __typename\n        projectId\n        projectName\n        customerId\n        customerName\n      }\n      errors {\n        __typename\n        code\n        message\n      }\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("billableSearch", arguments: ["searchTerm": "hello"], type: .list(.object(BillableSearch.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(billableSearch: [BillableSearch?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "billableSearch": billableSearch.flatMap { (value: [BillableSearch?]) -> [Snapshot?] in value.map { (value: BillableSearch?) -> Snapshot? in value.flatMap { (value: BillableSearch) -> Snapshot in value.snapshot } } }])
    }

    public var billableSearch: [BillableSearch?]? {
      get {
        return (snapshot["billableSearch"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [BillableSearch?] in value.map { (value: Snapshot?) -> BillableSearch? in value.flatMap { (value: Snapshot) -> BillableSearch in BillableSearch(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [BillableSearch?]) -> [Snapshot?] in value.map { (value: BillableSearch?) -> Snapshot? in value.flatMap { (value: BillableSearch) -> Snapshot in value.snapshot } } }, forKey: "billableSearch")
      }
    }

    public struct BillableSearch: GraphQLSelectionSet {
      public static let possibleTypes = ["CustomerSearchResult", "ProjectSearchResult"]

      public static let selections: [GraphQLSelection] = [
        GraphQLTypeCase(
          variants: ["CustomerSearchResult": AsCustomerSearchResult.selections, "ProjectSearchResult": AsProjectSearchResult.selections],
          default: [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          ]
        )
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public static func makeCustomerSearchResult(items: [AsCustomerSearchResult.Item?]? = nil, errors: [AsCustomerSearchResult.Error?]? = nil) -> BillableSearch {
        return BillableSearch(snapshot: ["__typename": "CustomerSearchResult", "items": items.flatMap { (value: [AsCustomerSearchResult.Item?]) -> [Snapshot?] in value.map { (value: AsCustomerSearchResult.Item?) -> Snapshot? in value.flatMap { (value: AsCustomerSearchResult.Item) -> Snapshot in value.snapshot } } }, "errors": errors.flatMap { (value: [AsCustomerSearchResult.Error?]) -> [Snapshot?] in value.map { (value: AsCustomerSearchResult.Error?) -> Snapshot? in value.flatMap { (value: AsCustomerSearchResult.Error) -> Snapshot in value.snapshot } } }])
      }

      public static func makeProjectSearchResult(items: [AsProjectSearchResult.Item?]? = nil, errors: [AsProjectSearchResult.Error?]? = nil) -> BillableSearch {
        return BillableSearch(snapshot: ["__typename": "ProjectSearchResult", "items": items.flatMap { (value: [AsProjectSearchResult.Item?]) -> [Snapshot?] in value.map { (value: AsProjectSearchResult.Item?) -> Snapshot? in value.flatMap { (value: AsProjectSearchResult.Item) -> Snapshot in value.snapshot } } }, "errors": errors.flatMap { (value: [AsProjectSearchResult.Error?]) -> [Snapshot?] in value.map { (value: AsProjectSearchResult.Error?) -> Snapshot? in value.flatMap { (value: AsProjectSearchResult.Error) -> Snapshot in value.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var asCustomerSearchResult: AsCustomerSearchResult? {
        get {
          if !AsCustomerSearchResult.possibleTypes.contains(__typename) { return nil }
          return AsCustomerSearchResult(snapshot: snapshot)
        }
        set {
          guard let newValue = newValue else { return }
          snapshot = newValue.snapshot
        }
      }

      public struct AsCustomerSearchResult: GraphQLSelectionSet {
        public static let possibleTypes = ["CustomerSearchResult"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("errors", type: .list(.object(Error.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, errors: [Error?]? = nil) {
          self.init(snapshot: ["__typename": "CustomerSearchResult", "items": items.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, "errors": errors.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Item?] in value.map { (value: Snapshot?) -> Item? in value.flatMap { (value: Snapshot) -> Item in Item(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, forKey: "items")
          }
        }

        public var errors: [Error?]? {
          get {
            return (snapshot["errors"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Error?] in value.map { (value: Snapshot?) -> Error? in value.flatMap { (value: Snapshot) -> Error in Error(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }, forKey: "errors")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Customer"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String? = nil) {
            self.init(snapshot: ["__typename": "Customer", "id": id, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct Error: GraphQLSelectionSet {
          public static let possibleTypes = ["QueryError"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("code", type: .nonNull(.scalar(String.self))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(code: String, message: String) {
            self.init(snapshot: ["__typename": "QueryError", "code": code, "message": message])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var code: String {
            get {
              return snapshot["code"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "code")
            }
          }

          public var message: String {
            get {
              return snapshot["message"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "message")
            }
          }
        }
      }

      public var asProjectSearchResult: AsProjectSearchResult? {
        get {
          if !AsProjectSearchResult.possibleTypes.contains(__typename) { return nil }
          return AsProjectSearchResult(snapshot: snapshot)
        }
        set {
          guard let newValue = newValue else { return }
          snapshot = newValue.snapshot
        }
      }

      public struct AsProjectSearchResult: GraphQLSelectionSet {
        public static let possibleTypes = ["ProjectSearchResult"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("errors", type: .list(.object(Error.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, errors: [Error?]? = nil) {
          self.init(snapshot: ["__typename": "ProjectSearchResult", "items": items.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, "errors": errors.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Item?] in value.map { (value: Snapshot?) -> Item? in value.flatMap { (value: Snapshot) -> Item in Item(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, forKey: "items")
          }
        }

        public var errors: [Error?]? {
          get {
            return (snapshot["errors"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Error?] in value.map { (value: Snapshot?) -> Error? in value.flatMap { (value: Snapshot) -> Error in Error(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }, forKey: "errors")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Project"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("projectId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("projectName", type: .scalar(String.self)),
            GraphQLField("customerId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("customerName", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(projectId: GraphQLID, projectName: String? = nil, customerId: GraphQLID, customerName: String? = nil) {
            self.init(snapshot: ["__typename": "Project", "projectId": projectId, "projectName": projectName, "customerId": customerId, "customerName": customerName])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var projectId: GraphQLID {
            get {
              return snapshot["projectId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "projectId")
            }
          }

          public var projectName: String? {
            get {
              return snapshot["projectName"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "projectName")
            }
          }

          public var customerId: GraphQLID {
            get {
              return snapshot["customerId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "customerId")
            }
          }

          public var customerName: String? {
            get {
              return snapshot["customerName"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "customerName")
            }
          }
        }

        public struct Error: GraphQLSelectionSet {
          public static let possibleTypes = ["QueryError"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("code", type: .nonNull(.scalar(String.self))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(code: String, message: String) {
            self.init(snapshot: ["__typename": "QueryError", "code": code, "message": message])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var code: String {
            get {
              return snapshot["code"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "code")
            }
          }

          public var message: String {
            get {
              return snapshot["message"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "message")
            }
          }
        }
      }
    }
  }
}

public final class BillableSearch2Query: GraphQLQuery {
  public static let operationString =
    "query billableSearch2 {\n  billableSearch2(searchTerm: \"hello\") {\n    __typename\n    customers {\n      __typename\n      items {\n        __typename\n        id\n        name\n      }\n      errors {\n        __typename\n        code\n        message\n      }\n    }\n    projects {\n      __typename\n      items {\n        __typename\n        projectId\n        projectName\n        customerId\n        customerName\n      }\n      errors {\n        __typename\n        code\n        message\n      }\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("billableSearch2", arguments: ["searchTerm": "hello"], type: .object(BillableSearch2.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(billableSearch2: BillableSearch2? = nil) {
      self.init(snapshot: ["__typename": "Query", "billableSearch2": billableSearch2.flatMap { (value: BillableSearch2) -> Snapshot in value.snapshot }])
    }

    public var billableSearch2: BillableSearch2? {
      get {
        return (snapshot["billableSearch2"] as? Snapshot).flatMap { BillableSearch2(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "billableSearch2")
      }
    }

    public struct BillableSearch2: GraphQLSelectionSet {
      public static let possibleTypes = ["BillableSearchResult2"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("customers", type: .object(Customer.selections)),
        GraphQLField("projects", type: .object(Project.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(customers: Customer? = nil, projects: Project? = nil) {
        self.init(snapshot: ["__typename": "BillableSearchResult2", "customers": customers.flatMap { (value: Customer) -> Snapshot in value.snapshot }, "projects": projects.flatMap { (value: Project) -> Snapshot in value.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var customers: Customer? {
        get {
          return (snapshot["customers"] as? Snapshot).flatMap { Customer(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "customers")
        }
      }

      public var projects: Project? {
        get {
          return (snapshot["projects"] as? Snapshot).flatMap { Project(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "projects")
        }
      }

      public struct Customer: GraphQLSelectionSet {
        public static let possibleTypes = ["CustomerSearchResult"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("errors", type: .list(.object(Error.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, errors: [Error?]? = nil) {
          self.init(snapshot: ["__typename": "CustomerSearchResult", "items": items.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, "errors": errors.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Item?] in value.map { (value: Snapshot?) -> Item? in value.flatMap { (value: Snapshot) -> Item in Item(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, forKey: "items")
          }
        }

        public var errors: [Error?]? {
          get {
            return (snapshot["errors"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Error?] in value.map { (value: Snapshot?) -> Error? in value.flatMap { (value: Snapshot) -> Error in Error(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }, forKey: "errors")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Customer"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String? = nil) {
            self.init(snapshot: ["__typename": "Customer", "id": id, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct Error: GraphQLSelectionSet {
          public static let possibleTypes = ["QueryError"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("code", type: .nonNull(.scalar(String.self))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(code: String, message: String) {
            self.init(snapshot: ["__typename": "QueryError", "code": code, "message": message])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var code: String {
            get {
              return snapshot["code"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "code")
            }
          }

          public var message: String {
            get {
              return snapshot["message"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "message")
            }
          }
        }
      }

      public struct Project: GraphQLSelectionSet {
        public static let possibleTypes = ["ProjectSearchResult"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("errors", type: .list(.object(Error.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, errors: [Error?]? = nil) {
          self.init(snapshot: ["__typename": "ProjectSearchResult", "items": items.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, "errors": errors.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Item?] in value.map { (value: Snapshot?) -> Item? in value.flatMap { (value: Snapshot) -> Item in Item(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, forKey: "items")
          }
        }

        public var errors: [Error?]? {
          get {
            return (snapshot["errors"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Error?] in value.map { (value: Snapshot?) -> Error? in value.flatMap { (value: Snapshot) -> Error in Error(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }, forKey: "errors")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Project"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("projectId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("projectName", type: .scalar(String.self)),
            GraphQLField("customerId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("customerName", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(projectId: GraphQLID, projectName: String? = nil, customerId: GraphQLID, customerName: String? = nil) {
            self.init(snapshot: ["__typename": "Project", "projectId": projectId, "projectName": projectName, "customerId": customerId, "customerName": customerName])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var projectId: GraphQLID {
            get {
              return snapshot["projectId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "projectId")
            }
          }

          public var projectName: String? {
            get {
              return snapshot["projectName"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "projectName")
            }
          }

          public var customerId: GraphQLID {
            get {
              return snapshot["customerId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "customerId")
            }
          }

          public var customerName: String? {
            get {
              return snapshot["customerName"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "customerName")
            }
          }
        }

        public struct Error: GraphQLSelectionSet {
          public static let possibleTypes = ["QueryError"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("code", type: .nonNull(.scalar(String.self))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(code: String, message: String) {
            self.init(snapshot: ["__typename": "QueryError", "code": code, "message": message])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var code: String {
            get {
              return snapshot["code"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "code")
            }
          }

          public var message: String {
            get {
              return snapshot["message"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "message")
            }
          }
        }
      }
    }
  }
}

public final class BillableSearch3Query: GraphQLQuery {
  public static let operationString =
    "query billableSearch3 {\n  billableSearch3(searchTerm: \"asdf\") {\n    __typename\n    items {\n      __typename\n      ... on Customer {\n        id\n        name\n        email\n      }\n      ... on Project {\n        projectId\n        projectName\n        customerId\n        customerName\n      }\n    }\n    errors {\n      __typename\n      code\n      message\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("billableSearch3", arguments: ["searchTerm": "asdf"], type: .list(.object(BillableSearch3.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(billableSearch3: [BillableSearch3?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "billableSearch3": billableSearch3.flatMap { (value: [BillableSearch3?]) -> [Snapshot?] in value.map { (value: BillableSearch3?) -> Snapshot? in value.flatMap { (value: BillableSearch3) -> Snapshot in value.snapshot } } }])
    }

    public var billableSearch3: [BillableSearch3?]? {
      get {
        return (snapshot["billableSearch3"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [BillableSearch3?] in value.map { (value: Snapshot?) -> BillableSearch3? in value.flatMap { (value: Snapshot) -> BillableSearch3 in BillableSearch3(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [BillableSearch3?]) -> [Snapshot?] in value.map { (value: BillableSearch3?) -> Snapshot? in value.flatMap { (value: BillableSearch3) -> Snapshot in value.snapshot } } }, forKey: "billableSearch3")
      }
    }

    public struct BillableSearch3: GraphQLSelectionSet {
      public static let possibleTypes = ["SearchResults"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("errors", type: .list(.object(Error.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, errors: [Error?]? = nil) {
        self.init(snapshot: ["__typename": "SearchResults", "items": items.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, "errors": errors.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Item?] in value.map { (value: Snapshot?) -> Item? in value.flatMap { (value: Snapshot) -> Item in Item(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, forKey: "items")
        }
      }

      public var errors: [Error?]? {
        get {
          return (snapshot["errors"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Error?] in value.map { (value: Snapshot?) -> Error? in value.flatMap { (value: Snapshot) -> Error in Error(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }, forKey: "errors")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Project", "Customer"]

        public static let selections: [GraphQLSelection] = [
          GraphQLTypeCase(
            variants: ["Customer": AsCustomer.selections, "Project": AsProject.selections],
            default: [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            ]
          )
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public static func makeCustomer(id: GraphQLID, name: String? = nil, email: String? = nil) -> Item {
          return Item(snapshot: ["__typename": "Customer", "id": id, "name": name, "email": email])
        }

        public static func makeProject(projectId: GraphQLID, projectName: String? = nil, customerId: GraphQLID, customerName: String? = nil) -> Item {
          return Item(snapshot: ["__typename": "Project", "projectId": projectId, "projectName": projectName, "customerId": customerId, "customerName": customerName])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var asCustomer: AsCustomer? {
          get {
            if !AsCustomer.possibleTypes.contains(__typename) { return nil }
            return AsCustomer(snapshot: snapshot)
          }
          set {
            guard let newValue = newValue else { return }
            snapshot = newValue.snapshot
          }
        }

        public struct AsCustomer: GraphQLSelectionSet {
          public static let possibleTypes = ["Customer"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String? = nil, email: String? = nil) {
            self.init(snapshot: ["__typename": "Customer", "id": id, "name": name, "email": email])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var email: String? {
            get {
              return snapshot["email"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }
        }

        public var asProject: AsProject? {
          get {
            if !AsProject.possibleTypes.contains(__typename) { return nil }
            return AsProject(snapshot: snapshot)
          }
          set {
            guard let newValue = newValue else { return }
            snapshot = newValue.snapshot
          }
        }

        public struct AsProject: GraphQLSelectionSet {
          public static let possibleTypes = ["Project"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("projectId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("projectName", type: .scalar(String.self)),
            GraphQLField("customerId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("customerName", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(projectId: GraphQLID, projectName: String? = nil, customerId: GraphQLID, customerName: String? = nil) {
            self.init(snapshot: ["__typename": "Project", "projectId": projectId, "projectName": projectName, "customerId": customerId, "customerName": customerName])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var projectId: GraphQLID {
            get {
              return snapshot["projectId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "projectId")
            }
          }

          public var projectName: String? {
            get {
              return snapshot["projectName"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "projectName")
            }
          }

          public var customerId: GraphQLID {
            get {
              return snapshot["customerId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "customerId")
            }
          }

          public var customerName: String? {
            get {
              return snapshot["customerName"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "customerName")
            }
          }
        }
      }

      public struct Error: GraphQLSelectionSet {
        public static let possibleTypes = ["QueryError"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("code", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(code: String, message: String) {
          self.init(snapshot: ["__typename": "QueryError", "code": code, "message": message])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var code: String {
          get {
            return snapshot["code"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "code")
          }
        }

        public var message: String {
          get {
            return snapshot["message"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}

public final class CustomerAndProjectSearchQuery: GraphQLQuery {
  public static let operationString =
    "query customerAndProjectSearch {\n  customerSearch(searchTerm: \"asdf\") {\n    __typename\n    items {\n      __typename\n      id\n      name\n    }\n    errors {\n      __typename\n      code\n      message\n    }\n  }\n  projectSearch(searchTerm: \"asdf\") {\n    __typename\n    items {\n      __typename\n      projectId\n      projectName\n      customerId\n      customerName\n    }\n    errors {\n      __typename\n      code\n      message\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("customerSearch", arguments: ["searchTerm": "asdf"], type: .object(CustomerSearch.selections)),
      GraphQLField("projectSearch", arguments: ["searchTerm": "asdf"], type: .object(ProjectSearch.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(customerSearch: CustomerSearch? = nil, projectSearch: ProjectSearch? = nil) {
      self.init(snapshot: ["__typename": "Query", "customerSearch": customerSearch.flatMap { (value: CustomerSearch) -> Snapshot in value.snapshot }, "projectSearch": projectSearch.flatMap { (value: ProjectSearch) -> Snapshot in value.snapshot }])
    }

    public var customerSearch: CustomerSearch? {
      get {
        return (snapshot["customerSearch"] as? Snapshot).flatMap { CustomerSearch(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "customerSearch")
      }
    }

    public var projectSearch: ProjectSearch? {
      get {
        return (snapshot["projectSearch"] as? Snapshot).flatMap { ProjectSearch(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "projectSearch")
      }
    }

    public struct CustomerSearch: GraphQLSelectionSet {
      public static let possibleTypes = ["CustomerSearchResult"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("errors", type: .list(.object(Error.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, errors: [Error?]? = nil) {
        self.init(snapshot: ["__typename": "CustomerSearchResult", "items": items.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, "errors": errors.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Item?] in value.map { (value: Snapshot?) -> Item? in value.flatMap { (value: Snapshot) -> Item in Item(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, forKey: "items")
        }
      }

      public var errors: [Error?]? {
        get {
          return (snapshot["errors"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Error?] in value.map { (value: Snapshot?) -> Error? in value.flatMap { (value: Snapshot) -> Error in Error(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }, forKey: "errors")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Customer"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String? = nil) {
          self.init(snapshot: ["__typename": "Customer", "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct Error: GraphQLSelectionSet {
        public static let possibleTypes = ["QueryError"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("code", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(code: String, message: String) {
          self.init(snapshot: ["__typename": "QueryError", "code": code, "message": message])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var code: String {
          get {
            return snapshot["code"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "code")
          }
        }

        public var message: String {
          get {
            return snapshot["message"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "message")
          }
        }
      }
    }

    public struct ProjectSearch: GraphQLSelectionSet {
      public static let possibleTypes = ["ProjectSearchResult"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("errors", type: .list(.object(Error.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, errors: [Error?]? = nil) {
        self.init(snapshot: ["__typename": "ProjectSearchResult", "items": items.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, "errors": errors.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Item?] in value.map { (value: Snapshot?) -> Item? in value.flatMap { (value: Snapshot) -> Item in Item(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, forKey: "items")
        }
      }

      public var errors: [Error?]? {
        get {
          return (snapshot["errors"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Error?] in value.map { (value: Snapshot?) -> Error? in value.flatMap { (value: Snapshot) -> Error in Error(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }, forKey: "errors")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Project"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("projectId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("projectName", type: .scalar(String.self)),
          GraphQLField("customerId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("customerName", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(projectId: GraphQLID, projectName: String? = nil, customerId: GraphQLID, customerName: String? = nil) {
          self.init(snapshot: ["__typename": "Project", "projectId": projectId, "projectName": projectName, "customerId": customerId, "customerName": customerName])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var projectId: GraphQLID {
          get {
            return snapshot["projectId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "projectId")
          }
        }

        public var projectName: String? {
          get {
            return snapshot["projectName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "projectName")
          }
        }

        public var customerId: GraphQLID {
          get {
            return snapshot["customerId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "customerId")
          }
        }

        public var customerName: String? {
          get {
            return snapshot["customerName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "customerName")
          }
        }
      }

      public struct Error: GraphQLSelectionSet {
        public static let possibleTypes = ["QueryError"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("code", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(code: String, message: String) {
          self.init(snapshot: ["__typename": "QueryError", "code": code, "message": message])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var code: String {
          get {
            return snapshot["code"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "code")
          }
        }

        public var message: String {
          get {
            return snapshot["message"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}