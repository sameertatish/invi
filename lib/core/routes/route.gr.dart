// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../featuers/auth/log_in/presentation/log_in_page.dart' as _i2;
import '../../featuers/invi/home/presentation/invi_home_page.dart' as _i3;
import '../../featuers/shrepaty/home/presentation/shrepaty_home_page.dart'
    as _i4;
import '../common/splash/app_view.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AppViewRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.AppView(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LogInPageRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.LogInPage(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    InviHomePageRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.InviHomePage(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ShrebatyHomePageRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.ShrebatyHomePage(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          AppViewRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          LogInPageRoute.name,
          path: '/logInPage',
        ),
        _i5.RouteConfig(
          InviHomePageRoute.name,
          path: '/inviHomePage',
        ),
        _i5.RouteConfig(
          ShrebatyHomePageRoute.name,
          path: '/shrebatyHomePage',
        ),
      ];
}

/// generated route for
/// [_i1.AppView]
class AppViewRoute extends _i5.PageRouteInfo<void> {
  const AppViewRoute()
      : super(
          AppViewRoute.name,
          path: '/',
        );

  static const String name = 'AppViewRoute';
}

/// generated route for
/// [_i2.LogInPage]
class LogInPageRoute extends _i5.PageRouteInfo<void> {
  const LogInPageRoute()
      : super(
          LogInPageRoute.name,
          path: '/logInPage',
        );

  static const String name = 'LogInPageRoute';
}

/// generated route for
/// [_i3.InviHomePage]
class InviHomePageRoute extends _i5.PageRouteInfo<void> {
  const InviHomePageRoute()
      : super(
          InviHomePageRoute.name,
          path: '/inviHomePage',
        );

  static const String name = 'InviHomePageRoute';
}

/// generated route for
/// [_i4.ShrebatyHomePage]
class ShrebatyHomePageRoute extends _i5.PageRouteInfo<void> {
  const ShrebatyHomePageRoute()
      : super(
          ShrebatyHomePageRoute.name,
          path: '/shrebatyHomePage',
        );

  static const String name = 'ShrebatyHomePageRoute';
}
