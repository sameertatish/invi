import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:inv_aligner/core/general_export.dart';
import 'package:inv_aligner/gen/assets.gen.dart';
import 'package:inv_aligner/generated/locale_keys.g.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Assets.imgs.logo.path,
          width: Adaptive.px(125),
          height: Adaptive.px(125),
        ),
        SizedBox(
          height: Adaptive.px(25),
        ),
        Text(
          (LocaleKeys.welcomTo).tr(),
          style: TextStyle(color: blue, fontSize: Adaptive.px(36)),
        ),
        Text(
          (LocaleKeys.shrebatyDentalClinic).tr(),
          style: TextStyle(color: blue, fontSize: Adaptive.px(18)),
        ),
        SizedBox(
          height: Adaptive.px(60),
        ),
        OptionWidget(title: (LocaleKeys.freeVirtualConsultattion).tr()),
        OptionWidget(title: (LocaleKeys.ourServices).tr()),
        OptionWidget(title: (LocaleKeys.makeAnAppontment).tr()),
        OptionWidget(title: (LocaleKeys.contactUs).tr()),
        OptionWidget(title: (LocaleKeys.aboutUs).tr())
      ],
    );
  }
}

class OptionWidget extends StatelessWidget {
  final String title;
  const OptionWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: Adaptive.px(15)),
      width: Adaptive.px(250),
      height: Adaptive.px(35),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(width: 1, color: bluePrimary)),
      child: Center(
          child: Text(title,
              style: TextStyle(color: bluePrimary, fontSize: Adaptive.px(14)))),
    );
  }
}
