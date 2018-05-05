import UIKit
import Apollo

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

//    fetchBillableSearchQuery()
//    fetchBillableSearchQuery2()
//    fetchBillableSearch3Query()
    fetchCustomerAndProjectSearchQuery()
  }

  func fetchBillableSearchQuery() {
    let apolloClient = ApolloClient.createClient

    apolloClient.fetch(query: BillableSearchQuery()) { (result, error) in
      print("fetchBillableSearchQuery()")

      if let data = result?.data {
        data.billableSearch?.forEach({ (searchResult) in
          print(searchResult?.__typename ?? "nil")

          let customerSearchResult = searchResult?.asCustomerSearchResult

          customerSearchResult?.items?.forEach({ print($0?.__typename ?? "nil")})
          customerSearchResult?.errors?.forEach({ print($0?.__typename ?? "nil")})

          let projectSearchResult = searchResult?.asProjectSearchResult

          projectSearchResult?.items?.forEach({ print($0?.__typename ?? "nil")})
          projectSearchResult?.errors?.forEach({ print($0?.__typename ?? "nil")})
        })
      }
    }
  }

  func fetchBillableSearchQuery2() {
    let apolloClient = ApolloClient.createClient

    apolloClient.fetch(query: BillableSearch2Query()) { (result, error) in
      print("fetchBillableSearchQuery2()")

      if let data = result?.data {
        let billableSearch = data.billableSearch2

        let customers = billableSearch?.customers
        customers?.items?.forEach({ print($0?.__typename ?? "nil")})
        customers?.errors?.forEach({ print($0?.__typename ?? "nil")})

        let projects = billableSearch?.projects
        projects?.items?.forEach({ print($0?.__typename ?? "nil")})
        projects?.errors?.forEach({ print($0?.__typename ?? "nil")})
      }
    }
  }

  func fetchCustomerAndProjectSearchQuery() {
    let apolloClient = ApolloClient.createClient

    apolloClient.fetch(query: CustomerAndProjectSearchQuery()) { (result, error) in
      print("fetchCustomerAndProjectSearchQuery()")

      if let data = result?.data {
        let customers = data.customerSearch
        customers?.items?.forEach({ print($0?.__typename ?? "nil")})
        customers?.errors?.forEach({ print($0?.__typename ?? "nil")})

        let projects = data.projectSearch
        projects?.items?.forEach({ print($0?.__typename ?? "nil")})
        projects?.errors?.forEach({ print($0?.__typename ?? "nil")})
      }
    }
  }

  func fetchBillableSearch3Query() {
    let apolloClient = ApolloClient.createClient

    apolloClient.fetch(query: BillableSearch3Query()) { (result, error) in
      print("fetchBillableSearch3Query()")

      if let data = result?.data {
        data.billableSearch3?.forEach({ (searchResult) in
          print(searchResult?.__typename ?? "nil")

          let items = searchResult?.items
          let errors = searchResult?.errors

          items?.forEach({ (item) in
            print(item?.__typename ?? "nil")
          })
          errors?.forEach({ (error) in
            print(error?.__typename ?? "nil")
          })
        })
      }
    }
  }

}
