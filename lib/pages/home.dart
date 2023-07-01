import 'package:flutter/material.dart';
import 'package:udhar/components/home_customer_card.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:udhar/pages/new_customer.dart';
import 'package:udhar/components/drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: CustomDrawer(),
      ),
      appBar: AppBar(
        title: const Text("Udhar"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 14),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const HomeCustomerCard(
                name: "new Customer",
                address: "A test address",
                contact: 123456);
          },
        ),
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton:
          ExpandableFab(type: ExpandableFabType.up, distance: 60, children: [
        FloatingActionButton.small(
          heroTag: "New Customer",
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => NewCustomer()));
            },
            child: const Icon(Icons.person_add)),
        FloatingActionButton.small(
          heroTag: "Add Product",
            onPressed: () {}, child: const Icon(Icons.shopping_bag))
      ]),
    );
  }
}
