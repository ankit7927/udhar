
import 'package:localstorage/localstorage.dart';

class StorageProvider{
  static LocalStorage  getStorage(){
    LocalStorage storage = LocalStorage('customers.json');
    return storage;
  }
}