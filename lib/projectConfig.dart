import 'package:app/app/routes/app_pages.dart';
import 'package:app/app/routes/route_guard.dart';

final projectConfig = {
  '': '',

  /// 路由守卫规则，必须存在，如果不需要，请传入一个空数组
  'guardRules': [
    GuardRule(
      except: [Routes.LOGIN],
      matchStr: '/',
      matchReg: RegExp(r"^/"),
      fallbackUrl: Routes.LOGIN,
      handler: (route) {
        if (route == Routes.GUARD) {
          return false;
        } else {
          return true;
        }
      },
    ),
  ]
};
