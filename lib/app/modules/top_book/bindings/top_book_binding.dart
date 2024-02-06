import 'package:get/get.dart';

import '../controllers/top_book_controller.dart';

class TopBookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopBookController>(
      () => TopBookController(),
    );
  }
}
