import 'package:flutter/material.dart';
import 'package:inv_aligner/core/common/app_setting_page/presentation/app_setting_page.dart';
import 'package:inv_aligner/core/general_export.dart';
import 'package:inv_aligner/core/utils/constant.dart';
import 'package:inv_aligner/featuers/shrepaty/home/presentation/widget/button_language.dart';
import 'package:inv_aligner/featuers/shrepaty/home/presentation/widget/form_widget.dart';

class ShrebatyHomePage extends StatefulWidget {
  const ShrebatyHomePage({Key? key}) : super(key: key);

  @override
  State<ShrebatyHomePage> createState() => _ShrebatyHomePageState();
}

class _ShrebatyHomePageState extends State<ShrebatyHomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppSettingPage(
      scaffoldKey: scaffoldKey,
      selectedPos: BottomNav.shrepaty.index,
      body: Column(
        children: [
          SizedBox(
            height: Adaptive.px(25),
          ),
          const ButtonLanguage(),
          SizedBox(
            height: Adaptive.px(60),
          ),
          const FormWidget()
        ],
      ),
    ));
  }
}
