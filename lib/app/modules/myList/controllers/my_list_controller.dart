import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyListController extends GetxController {
  var bottomSheetHeight = 900.0;
  TextEditingController ulasanC = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
