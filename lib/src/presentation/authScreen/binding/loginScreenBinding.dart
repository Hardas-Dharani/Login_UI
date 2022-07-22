import 'package:get/get.dart';
import 'package:test/src/presentation/authScreen/controller/loginScreenController.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(
      () => LoginScreenController(),
    );
  }
}
