import 'package:app/app/init/globalInit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  globalInit();
  runApp(
    GetMaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('zh', 'CN'),
      ],
      locale: Locale('zh', 'CN'),
      // TODO 项目名称
      title: "Application",

      /// 首页
      initialRoute: AppPages.INITIAL,

      /// 路由
      getPages: AppPages.routes,
    ),
  );
}
