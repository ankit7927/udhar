import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:udhar/components/home_customer_card.dart';
import 'package:udhar/utility/storage_provider.dart';

import '../utility/models.dart';

class AllCustomers extends StatefulWidget {
  const AllCustomers({super.key});

  @override
  State<AllCustomers> createState() => _AllCustomersState();
}

class _AllCustomersState extends State<AllCustomers> {
  CustomerList customerList = CustomerList();
  LocalStorage storage = StorageProvider.getStorage();

  getData(){
    var items = storage.getItem("customers");
    if(! items.isNull){
      customerList.customers = List<Customer>.from((items as List));
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Customers"),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18, top: 14),
          child: FutureBuilder(
            future: storage.ready,
            builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
              if (snapshot.data == null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }



              return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const HomeCustomerCard(
                      name: "new Customer",
                      address: "A test address",
                      contact: 123456);
                },
              );
            },
          )

          /*ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const HomeCustomerCard();
          },
        ),*/
          ),
    );
  }
}
