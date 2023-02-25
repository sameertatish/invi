import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:inv_aligner/core/common/app_setting_page/presentation/app_setting_page.dart';
import 'package:inv_aligner/core/general_export.dart';
import 'package:inv_aligner/core/routes/route.gr.dart';
import 'package:inv_aligner/core/utils/constant.dart';
import 'package:inv_aligner/gen/assets.gen.dart';
import 'package:inv_aligner/generated/locale_keys.g.dart';

class InviHomePage extends StatefulWidget {
  const InviHomePage({Key? key}) : super(key: key);

  @override
  State<InviHomePage> createState() => _InviHomePageState();
}

class _InviHomePageState extends State<InviHomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppSettingPage(
      scaffoldKey: scaffoldKey,
      selectedPos: BottomNav.invi.index,
      body: Column(
        children: [
          SizedBox(
            height: Adaptive.px(80),
          ),
          Text((LocaleKeys.invi).tr(),
              style: TextStyle(color: bluePrimary, fontSize: Adaptive.px(115))),
          Text((LocaleKeys.aligner).tr(),
              style: TextStyle(color: bluePrimary, fontSize: Adaptive.px(43))),
          SizedBox(
            height: Adaptive.px(125),
          ),
          const OptionsInviHome()
        ],
      ),
    ));
  }
}

class OptionsInviHome extends StatelessWidget {
  const OptionsInviHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                context.router.push(const LogInPageRoute());
              },
              child: SizedBox(
                width: Adaptive.px(277),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: (LocaleKeys.iHaveAlreadyStartedTreatment).tr(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: bluePrimary,
                          fontSize: Adaptive.px(20)),
                    ),
                    WidgetSpan(
                      child: Padding(
                          padding: EdgeInsetsDirectional.only(
                              start: Adaptive.px(15)),
                          child: SvgPicture.asset(
                            Assets.svg.arrowRightSolid.path,
                            height: Adaptive.px(20),
                            color: blue,
                          )),
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: Adaptive.px(16),
        ),
        Divider(
          color: blueLight,
          thickness: 2,
          indent: 25,
          endIndent: 25,
        ),
        SizedBox(
          height: Adaptive.px(16),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {},
              child: SizedBox(
                width: Adaptive.px(277),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: (LocaleKeys.iWantToKnowMoreAboutIt).tr(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: bluePrimary,
                          fontSize: Adaptive.px(20)),
                    ),
                    WidgetSpan(
                      child: Padding(
                          padding: EdgeInsetsDirectional.only(
                              start: Adaptive.px(15)),
                          child: SvgPicture.asset(
                            Assets.svg.arrowRightSolid.path,
                            height: Adaptive.px(20),
                            color: blue,
                          )),
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
