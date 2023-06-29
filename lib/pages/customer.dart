import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(1, 245, 245, 245),
      appBar: AppBar(
        title: const Text("Customer"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.history)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 14, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CircleAvatar(
                  radius: 46,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  child: Column(
                    children: [
                      const Text(
                        "100 Rs.",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w600),
                      ),
                      FilledButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.only(left: 50, right: 50))),
                        child: const Text("Edit"),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Customer Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Text(
                        "this is a customer address with full text",
                        overflow: TextOverflow.fade,
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.call),
                    iconSize: 30,
                    tooltip: "Call",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton:
          ExpandableFab(type: ExpandableFabType.up, distance: 60, children: [
        FloatingActionButton.small(onPressed: () {}, child: Icon(Icons.edit)),
        FloatingActionButton.small(onPressed: () {}, child: Icon(Icons.person))
      ]),
    );
  }
}
