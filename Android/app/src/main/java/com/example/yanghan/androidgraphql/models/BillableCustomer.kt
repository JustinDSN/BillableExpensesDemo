package com.example.yanghan.androidgraphql.models

import com.apollographql.apollo.sample.CustomerAndProjectSearchQuery

class BillableCustomer(billableCustomer: CustomerAndProjectSearchQuery.Customers) {
    val items: List<CustomerAndProjectSearchQuery.Item>?
    val __typename: String

    init {
        __typename = billableCustomer.__typename()
        items = billableCustomer.items()
    }
}
