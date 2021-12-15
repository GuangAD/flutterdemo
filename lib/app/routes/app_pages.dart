import 'package:get/get.dart';

import 'package:app/app/modules/guard/bindings/guard_binding.dart';
import 'package:app/app/modules/guard/views/guard_view.dart';
import 'package:app/app/modules/home/bindings/home_binding.dart';
import 'package:app/app/modules/home/views/home_view.dart';
import 'package:app/app/modules/login/bindings/login_binding.dart';
import 'package:app/app/modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.GUARD,
      page: () => GuardView(),
      binding: GuardBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
