import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:udhar/utility/models.dart';

class NewCustomer extends StatefulWidget {
  NewCustomer({super.key});

  String name = "", address = "";
  int contact = 0;

  String nameCont = "";

  @override
  State<NewCustomer> createState() => _NewCustomerState();
}

class _NewCustomerState extends State<NewCustomer> {
  CustomerList customerList = CustomerList();
  LocalStorage storage = LocalStorage('customers.json');

  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController contactController = TextEditingController();

  addCustomers(String name, String address, int contact) {
    Customer newCustomer =
        Customer(name: name, contact: contact, address: address);

    customerList.customers.add(newCustomer);
    storage.setItem('customers', customerList.toJSONEncodable());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Customer"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  addCustomers(
                      nameController.value.text,
                      addressController.value.text,
                      int.parse(contactController.value.text));
                  nameController.clear();
                  addressController.clear();
                  contactController.clear();
                  Navigator.of(context).pop();
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
                controller: nameController,
                decoration: const InputDecoration(
                    label: Text("Name"), border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: contactController,
                keyboardType: const TextInputType.numberWithOptions(),
                decoration: const InputDecoration(
                    label: Text("Contact Number"),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: addressController,
                decoration: const InputDecoration(
                    label: Text("Address"), border: OutlineInputBorder()),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                  onPressed: () {
                    var data = storage.getItem("customers.json");

                  },
                  child: const Text("check db"))
            ],
          ),
        ),
      ),
    );
  }
}
