import 'package:localstorage/localstorage.dart';

class StorageProvider {
  static const String CUSTOMER = "customers";
  static LocalStorage getCustomerStorage() {
    return LocalStorage('$CUSTOMER.json');
  }
}
