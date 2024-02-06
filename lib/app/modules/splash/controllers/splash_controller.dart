import 'package:digitallibrary/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  final storage = GetStorage();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    // storage.write('status', 'belum login');
  }

  @override
  void onReady() {
    super.onReady();
    // print('onReady SplashController');
    // if (storage.read('status') != "" && storage.read('status') != null) {
    //   Future.delayed(Duration(seconds: 4), () {
    //     Get.offAllNamed(Routes.HOME);
    //   });
    // } else {
    //   Get.offAllNamed(Routes.LOGIN);
    // }
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
