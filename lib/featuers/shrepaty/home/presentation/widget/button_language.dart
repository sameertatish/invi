import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:inv_aligner/core/general_export.dart';
import 'package:inv_aligner/core/routes/route.gr.dart';
import 'package:inv_aligner/core/utils/constant.dart';
import 'package:inv_aligner/generated/locale_keys.g.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ButtonLanguage extends StatelessWidget {
  const ButtonLanguage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: Adaptive.px(30),
        ),
        InkWell(
          onTap: () {
            context.setLocale(Locale(LangConst.localen, LangConst.localeEN));
            AutoRouter.of(context).replaceAll([const AppViewRoute()]);
          },
          child: Container(
            width: Adaptive.px(68),
            height: Adaptive.px(25),
            decoration: BoxDecoration(
                color: (LocaleKeys.arabic) == 'عربي' ? Colors.white : blueLight,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(width: 1, color: blueLight)),
            child: Center(
                child: Text(
              (LocaleKeys.english).tr(),
              style: TextStyle(fontSize: Adaptive.px(12)),
            )),
          ),
        ),
        SizedBox(
          width: Adaptive.px(7),
        ),
        InkWell(
          onTap: () {
            context.setLocale(Locale(LangConst.localear, LangConst.localeAR));
            AutoRouter.of(context).replaceAll([const AppViewRoute()]);
          },
          child: Container(
            width: Adaptive.px(68),
            height: Adaptive.px(25),
            decoration: BoxDecoration(
                color: (LocaleKeys.arabic) == 'عربي' ? blueLight : Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(width: 1, color: blueLight)),
            child: Center(
                child: Text(
              (LocaleKeys.arabic).tr(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Adaptive.px(12),
                  color: (LocaleKeys.arabic) == 'عربي' ? bluePrimary : blue),
            )),
          ),
        ),
      ],
    );
  }
}
