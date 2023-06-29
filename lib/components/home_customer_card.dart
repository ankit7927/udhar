import 'package:flutter/material.dart';

class HomeCustomerCard extends StatelessWidget {
  const HomeCustomerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Row(children: [
        Container(
          margin: EdgeInsets.all(10),
          child: const CircleAvatar(
            radius: 26,
          ),
        )
      ]),
    );

    /* const Card(
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
          ),
          Column(
            children: [
              Text(
                "Customer Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Some supporting text for addres to fill",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          Row(
            children: [
              Text(
                "100",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
              ),
              Text(
                "Rs.",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              )
            ],
          )
        ],
      ),
    );

    */
  }
}
