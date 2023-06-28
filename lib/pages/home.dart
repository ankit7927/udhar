import 'package:flutter/material.dart';
import 'package:udhar/components/home_customer_card.dart';

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
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search))
        ],
      ),
      body: Container(
        child: const HomeCustomerCard(name: "ankit", email: "test@email",amount: 100,),
      ),
    );
  }
}
