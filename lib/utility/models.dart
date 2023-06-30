class Customer {
  Customer({required this.name, required this.contact, required this.address});

  String name, address;
  int contact;
}

class Product {
  Product(
      {required this.name,
      required this.prise,
      required this.quantity,
      required this.totalPrise});

  int quantity, prise, totalPrise;
  String name;
}
