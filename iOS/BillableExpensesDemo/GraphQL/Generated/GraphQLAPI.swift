//  This file was automatically generated and should not be edited.

import Apollo

public final class CustomerAndProjectSearchQuery: GraphQLQuery {
  public static let operationString =
    "query CustomerAndProjectSearch($searchTerm: String) {\n  customers(searchTerm: $searchTerm) {\n    __typename\n    items {\n      __typename\n      ...customerFragment\n    }\n    errors {\n      __typename\n      ...errorFragment\n    }\n  }\n  projects(searchTerm: $searchTerm) {\n    __typename\n    items {\n      __typename\n      ...projectFragment\n    }\n    errors {\n      __typename\n      ...errorFragment\n    }\n  }\n}"

  public static var requestString: String { return operationString.appending(CustomerFragment.fragmentString).appending(ErrorFragment.fragmentString).appending(ProjectFragment.fragmentString) }

  public var searchTerm: String?

  public init(searchTerm: String? = nil) {
    self.searchTerm = searchTerm
  }

  public var variables: GraphQLMap? {
    return ["searchTerm": searchTerm]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("customers", arguments: ["searchTerm": GraphQLVariable("searchTerm")], type: .object(Customer.selections)),
      GraphQLField("projects", arguments: ["searchTerm": GraphQLVariable("searchTerm")], type: .object(Project.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(customers: Customer? = nil, projects: Project? = nil) {
      self.init(snapshot: ["__typename": "Query", "customers": customers.flatMap { (value: Customer) -> Snapshot in value.snapshot }, "projects": projects.flatMap { (value: Project) -> Snapshot in value.snapshot }])
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
      public static let possibleTypes = ["CustomerList"]

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
        self.init(snapshot: ["__typename": "CustomerList", "items": items.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, "errors": errors.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }])
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

        public var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        public struct Fragments {
          public var snapshot: Snapshot

          public var customerFragment: CustomerFragment {
            get {
              return CustomerFragment(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }

      public struct Error: GraphQLSelectionSet {
        public static let possibleTypes = ["QueryError"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
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

        public var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        public struct Fragments {
          public var snapshot: Snapshot

          public var errorFragment: ErrorFragment {
            get {
              return ErrorFragment(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }

    public struct Project: GraphQLSelectionSet {
      public static let possibleTypes = ["ProjectList"]

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
        self.init(snapshot: ["__typename": "ProjectList", "items": items.flatMap { (value: [Item?]) -> [Snapshot?] in value.map { (value: Item?) -> Snapshot? in value.flatMap { (value: Item) -> Snapshot in value.snapshot } } }, "errors": errors.flatMap { (value: [Error?]) -> [Snapshot?] in value.map { (value: Error?) -> Snapshot? in value.flatMap { (value: Error) -> Snapshot in value.snapshot } } }])
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

        public var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        public struct Fragments {
          public var snapshot: Snapshot

          public var projectFragment: ProjectFragment {
            get {
              return ProjectFragment(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }

      public struct Error: GraphQLSelectionSet {
        public static let possibleTypes = ["QueryError"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
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

        public var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        public struct Fragments {
          public var snapshot: Snapshot

          public var errorFragment: ErrorFragment {
            get {
              return ErrorFragment(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

public struct CustomerFragment: GraphQLFragment {
  public static let fragmentString =
    "fragment customerFragment on Customer {\n  __typename\n  id\n  name\n}"

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

public struct ProjectFragment: GraphQLFragment {
  public static let fragmentString =
    "fragment projectFragment on Project {\n  __typename\n  projectId\n  projectName\n  customerId\n  customerName\n}"

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

public struct ErrorFragment: GraphQLFragment {
  public static let fragmentString =
    "fragment errorFragment on Error {\n  __typename\n  code\n  message\n}"

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