import 'package:get/get.dart';
import 'package:test/src/presentation/authScreen/controller/loginScreenController.dart';

class MainScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(
      () => LoginScreenController(),
    );
  }
}
