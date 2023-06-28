import 'package:flutter/material.dart';

class HomeCustomerCard extends StatefulWidget {
  const HomeCustomerCard(
      {super.key,
      required this.name,
      required this.email,
      required this.amount});
  final String name, email;
  final int amount;
  @override
  State<HomeCustomerCard> createState() => _HomeCustomerCardState();
}

class _HomeCustomerCardState extends State<HomeCustomerCard> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.name);
  }
}
