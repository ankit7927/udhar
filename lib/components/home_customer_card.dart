import 'package:flutter/material.dart';
import 'package:udhar/pages/customer.dart';
import 'package:udhar/components/text_dp.dart';

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
        surfaceTintColor: Colors.white,
        elevation: 2,
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Container(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextDP(text: "test", radius: 24, fontSize: 18),
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
              SizedBox(width: 24.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "100",
                    style:
                        TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rs.",
                    style: TextStyle(fontSize: 10),
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
