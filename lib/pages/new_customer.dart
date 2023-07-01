import 'package:flutter/material.dart';

class NewCustomer extends StatefulWidget {
  NewCustomer({super.key});

  String name = "", address = "";
  int contact = 0;

  String nameCont = "";

  @override
  State<NewCustomer> createState() => _NewCustomerState();
}

class _NewCustomerState extends State<NewCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Customer"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  widget.nameCont = widget.name + widget.contact.toString();
                });
              },
              icon: const Icon(Icons.check))
        ],
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
              TextField(
                onChanged: (String data) {
                  widget.name = data;
                },
                decoration: const InputDecoration(
                    label: Text("Name"), border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                onChanged: (String data) {
                  widget.contact = int.parse(data);
                },
                keyboardType: const TextInputType.numberWithOptions(),
                decoration: const InputDecoration(
                    label: Text("Contact Number"),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                onChanged: (String data) {
                  widget.address = data;
                },
                decoration: const InputDecoration(
                    label: Text("Address"), border: OutlineInputBorder()),
              ),
              const SizedBox(height: 40),
              Text(
                widget.nameCont,
                style: const TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
