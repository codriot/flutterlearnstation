import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Controller extends GetxController {
  final _getStorage = GetStorage();
  final _storageKey = 'Counter';

  var count = 0.obs;
  increment() {
    count++;
    // _getStorage.write(_storageKey, count);
  }

  decrement() {
    count--;
    // _getStorage.write(_storageKey, count);
  }
}
