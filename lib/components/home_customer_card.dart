import 'package:flutter/material.dart';
import 'package:udhar/pages/customer.dart';

class HomeCustomerCard extends StatelessWidget {
  const HomeCustomerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Customer()),
        );
      }, 
      child: Card(
        elevation: 1.6,
        margin: const EdgeInsets.only(bottom: 12.0),
        child: Container(
          padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
          child: const Row(
            children: <Widget>[
              CircleAvatar(
                radius: 30.0,
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "A title text",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("A subtitle text"),
                  ],
                ),
              ),
              SizedBox(width: 10.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "100",
                    style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        height: 0.8),
                  ),
                  Text(
                    "Rs.",
                    style: TextStyle(fontSize: 8),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
