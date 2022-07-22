import 'package:get/get.dart';
import 'package:test/src/presentation/authScreen/binding/loginScreenBinding.dart';
import 'package:test/src/presentation/authScreen/loginView.dart';
import 'package:test/src/presentation/mainScreen/binding/mainScreenBinding.dart';
import 'package:test/src/presentation/mainScreen/mainScreenView.dart';
import 'package:test/src/routes/routers.dart';

class RoutingModule {
  List<GetPage> routingList = [
    GetPage(
      name: Routers.login,
      page: () => const SignMain(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routers.mainScreen,
      page: () => const MainScreenView(),
      binding: MainScreenBinding(),
    ),
  ];
}
