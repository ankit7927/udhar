class Customer {
  Customer({required this.name, required this.contact, required this.address});

  String name, address;
  int contact;

  toJSONEncodable(){
    Map<String, dynamic> m = new Map();
    m["name"] = name;
    m["address"]= address;
    m["contact"] = contact;

    return m;
  }
}

class CustomerList {
  List<Customer> customers = [];

  toJSONEncodable() {
    return customers.map((item) {
      return item.toJSONEncodable();
    }).toList();
  }

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
