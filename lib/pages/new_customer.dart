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
              Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: const TextField(
                    decoration: InputDecoration(
                        label: Text("Name"), border: OutlineInputBorder()),
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const TextField(
                    decoration: InputDecoration(
                        label: Text("Contact Number"),
                        border: OutlineInputBorder()),
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const TextField(
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                        label: Text("Address"), border: OutlineInputBorder()),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 40),
                
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Save and add Products"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
