import UIKit
import Apollo

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    fetchCustomerAndProjectSearchQuery()
  }

  func fetchCustomerAndProjectSearchQuery() {
    let apolloClient = ApolloClient.createClient

    apolloClient.fetch(query: CustomerAndProjectSearchQuery()) { (result, error) in
      print("fetchCustomerAndProjectSearchQuery()")

      if let data = result?.data {
        let customers = data.customers
        customers?.items?.forEach({ print($0?.fragments.customerFragment ?? "nil")})
        customers?.errors?.forEach({ print($0?.__typename ?? "nil")})

        let projects = data.projects
        projects?.items?.forEach({ print($0?.fragments.projectFragment ?? "nil")})
        projects?.errors?.forEach({ print($0?.__typename ?? "nil")})
      }
    }
  }

}
