import 'package:flutter/material.dart';
import 'package:udhar/components/home_customer_card.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Udhar"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const HomeCustomerCard();
          },
        ),
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton:
          ExpandableFab(type: ExpandableFabType.up, distance: 60, children: [
        FloatingActionButton.small(onPressed: () {}, child: const Icon(Icons.person_add)),
        FloatingActionButton.small(onPressed: () {}, child: const Icon(Icons.shopping_bag))
      ]),
    );
  }
}
