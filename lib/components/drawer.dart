import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(0),
          child: UserAccountsDrawerHeader(
            accountName: const Text("test account"),
            accountEmail: const Text("test@email.com"),
            currentAccountPicture: const CircleAvatar(
              radius: 16,
              child: Text(
                "T",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            onDetailsPressed: () {},
            otherAccountsPictures: const [
              CircleAvatar(
                radius: 16,
                child: Text(
                  "I",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              CircleAvatar(
                radius: 16,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text("Customers"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text("Settings"),
          onTap: () {},
        )
      ],
    );
  }
}
