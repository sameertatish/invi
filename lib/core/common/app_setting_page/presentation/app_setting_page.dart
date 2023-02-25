import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:inv_aligner/core/general_export.dart';
import 'package:inv_aligner/core/routes/route.gr.dart';
import 'package:inv_aligner/core/utils/constant.dart';
import 'package:inv_aligner/gen/assets.gen.dart';
import 'package:inv_aligner/generated/locale_keys.g.dart';

class AppSettingPage extends StatefulWidget {
  final Widget body;
  final int selectedPos;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final Widget? floatingWidget;

  const AppSettingPage({
    Key? key,
    required this.body,
    required this.selectedPos,
    required this.scaffoldKey,
    this.floatingWidget,
  }) : super(key: key);

  @override
  State<AppSettingPage> createState() => _AppSettingPageState();
}

class _AppSettingPageState extends State<AppSettingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: widget.scaffoldKey,
        body: Stack(
          alignment: AlignmentDirectional.centerEnd,
          children: [
            widget.body,
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: bluePrimary,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: bluePrimary,
              icon: Image.asset(
                Assets.imgs.logo.path,
                width: Adaptive.px(40),
                height: Adaptive.px(40),
              ),
              label: (LocaleKeys.shrebatyDentalClinic).tr(),
            ),
            BottomNavigationBarItem(
              backgroundColor: bluePrimary,
              icon: const Icon(Icons.explore),
              label: (LocaleKeys.password).tr(),
            ),
          ],
          currentIndex: widget.selectedPos,
          selectedIconTheme: const IconThemeData(color: Colors.blue),
          unselectedIconTheme: const IconThemeData(color: Colors.blue),
          selectedFontSize: Adaptive.px(12),
          unselectedFontSize: Adaptive.px(12),
          unselectedItemColor: Theme.of(context).hintColor,
          selectedItemColor: Theme.of(context).dividerColor,
          showUnselectedLabels: true,
          onTap: changeSelectedNavigation,
        ),
        floatingActionButton: widget.floatingWidget,
      ),
    );
  }

  changeSelectedNavigation(int? selected) {
    if (selected == BottomNav.invi.index) {
      AutoRouter.of(context).replaceAll([const InviHomePageRoute()]);
    } else if (selected == BottomNav.shrepaty.index) {
      AutoRouter.of(context).replaceAll([const ShrebatyHomePageRoute()]);
    }
  }
}
