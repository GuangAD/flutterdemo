import 'package:app/app/routes/app_pages.dart';
import 'package:app/app/routes/route_guard.dart';

projectInit() {
  final newRoutes = AppPages.routes
      .map((item) => item.copyWith(middlewares: [RouteGuardMiddleWare()]))
      .toList();
  AppPages.routes
    ..clear()
    ..addAll(newRoutes);
  print(AppPages.routes[0].middlewares);
}
