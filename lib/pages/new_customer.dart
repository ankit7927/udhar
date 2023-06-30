import 'package:flutter/material.dart';

class NewCustomer extends StatefulWidget {
  const NewCustomer({super.key});

  @override
  State<NewCustomer> createState() => _NewCustomerState();
}

class _NewCustomerState extends State<NewCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Customer"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.check))],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 14),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt,
                    )),
              ),
              const SizedBox(height: 30),
              const TextField(
                decoration: InputDecoration(
                    label: Text("Name"), border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(
                    label: Text("Contact Number"),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              const TextField(
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                    label: Text("Address"), border: OutlineInputBorder()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
