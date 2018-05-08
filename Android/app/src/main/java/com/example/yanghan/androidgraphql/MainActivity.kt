package com.example.yanghan.androidgraphql

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.v7.widget.LinearLayoutManager
import android.support.v7.widget.RecyclerView
import android.widget.Toast

import com.apollographql.apollo.ApolloCall
import com.apollographql.apollo.ApolloClient
import com.apollographql.apollo.api.Response
import com.apollographql.apollo.exception.ApolloException
import com.apollographql.apollo.sample.CustomerAndProjectSearchQuery
import com.example.yanghan.androidgraphql.adapters.MainActivityAdapter
import com.example.yanghan.androidgraphql.models.BillableCustomer

import java.util.ArrayList

/**
 * This is an example for how GraphQL behave in Android
 *
 * Need Node, GraphQL gradle set up and local IP address
 *
 * The sample is using kotlin as model
 */
class MainActivity : AppCompatActivity() {
    private var mRecyclerView: RecyclerView? = null
    private var mAdapter: MainActivityAdapter? = null

    companion object {
        const val IP_ADDRESS = "10.81.30.78"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        initView()
        initData()
        loadFromLocalServer()
    }

    private fun initView() {
        mRecyclerView = findViewById(R.id.recycler_view)
        val linearLayoutManager = LinearLayoutManager(this)
        linearLayoutManager.orientation = LinearLayoutManager.VERTICAL
        mRecyclerView!!.layoutManager = linearLayoutManager
    }

    private fun initData() {
        mAdapter = MainActivityAdapter(this, ArrayList())
        mRecyclerView!!.adapter = mAdapter
    }

    private fun loadFromLocalServer() {
        val apolloClient = ApolloClient.builder()
                //Enter your local host IP address
                .serverUrl("http://" + IP_ADDRESS + ":4000/")
                .build()
        apolloClient.query(CustomerAndProjectSearchQuery.builder()
                //SearchItem could be null
                .searchTerm("")
                .build()
        ).enqueue(object : ApolloCall.Callback<CustomerAndProjectSearchQuery.Data>() {
            override fun onResponse(response: Response<CustomerAndProjectSearchQuery.Data>) {
                val customer = BillableCustomer(response.data()!!.customers()!!)
                showCustomersItems(customer.items!!)
            }

            override fun onFailure(e: ApolloException) {
                showToast(e.toString())
            }
        })
    }

    private fun showCustomersItems(list: List<CustomerAndProjectSearchQuery.Item>) {
        val result = ArrayList<String>()
        for (i in list) {
            result.add(i.toString())
        }
        mAdapter!!.setData(result)
    }

    private fun showToast(content: String) {
        Toast.makeText(this, content, Toast.LENGTH_LONG).show()
    }
}
