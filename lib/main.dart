import 'package:flutter/material.dart';
import 'package:inv_aligner/core/routes/route.gr.dart';
import 'package:inv_aligner/core/utils/constant.dart';
import 'package:inv_aligner/core/utils/shared_function.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:inv_aligner/generated/codegen_loader.g.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final SharedFunction sharedFunction = SharedFunction();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale(LangConst.localen, LangConst.localeEN),
        Locale(LangConst.localear, LangConst.localeAR),
      ],
      saveLocale: true,
      path: 'assets/lang',
      fallbackLocale: Locale(LangConst.localen, LangConst.localeEN),
      assetLoader: const CodegenLoader(),
      startLocale: Locale(LangConst.localen, LangConst.localeEN),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter(navigatorKey);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
