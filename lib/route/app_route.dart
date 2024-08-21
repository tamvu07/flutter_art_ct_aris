import 'package:auto_route/auto_route.dart';
import 'package:mobile_aris_management_tool/page/home_page.dart';
import 'package:mobile_aris_management_tool/page/login_page_ext.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true),
  ],
)
class $AppRouter {}
