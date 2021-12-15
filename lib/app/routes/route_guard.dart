import 'package:app/projectConfig.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class GuardRule {
  /// [except]是一个字符串数组，表示排除的路由地址
  /// ```dart
  ///['/user/profile', '/user/public']
  /// ```
  final List<String> except;

  /// [matchStr]表示要匹配的路由,
  /// 字符串表示已以此字符串开头的路由,
  /// 与[matchReg]中至少存在一个,
  /// 两个都存在时，[matchReg]起作用
  final String matchStr;

  /// [matchReg]表示要匹配的路由,
  /// 正则，匹配路由path,
  /// 与[matchStr]中至少存在一个，
  /// 两个都存在时，[matchReg]起作用
  final RegExp matchReg;

  /// 路由鉴权方法，传入当前跳转的路由,
  /// 返回[bool]值或字符串,
  /// 返回字符串时，表示要重定向的路由,
  /// 返回[false]，表示重定向到[fallbackUrl]
  final Function(String) handler;

  /// 当前规则默认重定向的路由,
  /// 优先级低于[handler]中返回的地址
  final String fallbackUrl;
  GuardRule({
    @required this.except,
    @required this.handler,
    @required this.fallbackUrl,
    this.matchStr,
    this.matchReg,
  }) : assert(
            !(matchReg == null && matchStr == null), 'matchReg和matchStr必须存在一个');
  // final
}

class RouteGuardMiddleWare extends GetMiddleware {
  handlers(String route) {
    final rules = projectConfig['guardRules'] as List<GuardRule>;
    for (int i = 0; i < rules.length; i++) {
      // 路由是否匹配此规则
      bool flag;
      if (rules[i].except.contains(route)) {
        flag = false;
      } else {
        if (rules[i].matchReg != null) {
          flag = rules[i].matchReg.hasMatch(route);
        } else {
          flag = route.startsWith(rules[i].matchStr);
        }
      }
      if (flag) {
        final res = rules[i].handler(route);
        if (res is String || res is bool) {
          if (res is bool && res) {
            continue;
          } else {
            if (res is String) {
              return res;
            } else {
              return rules[i].fallbackUrl;
            }
          }
        } else {
          throw '${rules[i].handler}返回值应为String或bool';
        }
      } else {
        continue;
      }
    }
    return true;
  }

  @override
  RouteSettings redirect(String route) {
    final res = handlers(route);
    if (res is bool) {
      return null;
    } else {
      return RouteSettings(name: res);
    }
  }
}
