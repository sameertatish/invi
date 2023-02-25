import 'package:auto_route/auto_route.dart';
import 'package:inv_aligner/core/common/splash/app_view.dart';
import 'package:inv_aligner/featuers/auth/log_in/presentation/log_in_page.dart';
import 'package:inv_aligner/featuers/invi/home/presentation/invi_home_page.dart';
import 'package:inv_aligner/featuers/shrepaty/home/presentation/shrepaty_home_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  CustomRoute(
    path: "/",
    name: "AppViewRoute",
    page: AppView,
    initial: true,
    transitionsBuilder: TransitionsBuilders.fadeIn,
  ),
  CustomRoute(
    path: "/logInPage",
    name: 'LogInPageRoute',
    page: LogInPage,
    transitionsBuilder: TransitionsBuilders.fadeIn,
  ),
  CustomRoute(
    path: "/inviHomePage",
    name: 'InviHomePageRoute',
    page: InviHomePage,
    transitionsBuilder: TransitionsBuilders.fadeIn,
  ),
  CustomRoute(
    path: "/shrebatyHomePage",
    name: 'ShrebatyHomePageRoute',
    page: ShrebatyHomePage,
    transitionsBuilder: TransitionsBuilders.fadeIn,
  ),
])
class $AppRouter {}
