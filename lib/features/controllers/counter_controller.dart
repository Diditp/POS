import 'package:get/get.dart';

class Counter extends GetxController {
  var counter = 0.obs;
  increment() => counter++;
}
