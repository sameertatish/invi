import 'package:flutter/material.dart';
import 'package:inv_aligner/core/general_export.dart';
import 'package:inv_aligner/gen/assets.gen.dart';

class CommonAppBar extends StatelessWidget {
  final String title;
  final bool isWithBack;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const CommonAppBar({
    Key? key,
    required this.title,
    this.scaffoldKey,
    required this.isWithBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: Adaptive.px(75),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      backgroundColor: bluePrimary,
      leading: Padding(
        padding: EdgeInsetsDirectional.only(
            start: Adaptive.px(25), top: Adaptive.px(25)),
        child: const Icon(Icons.arrow_back),
      ),
      centerTitle: true,
      title: Padding(
        padding: EdgeInsetsDirectional.only(top: Adaptive.px(25)),
        child: Text(
          title,
          style: TextStyle(
              letterSpacing: 1,
              color: Colors.white,
              fontSize: Adaptive.px(20),
              fontFamily: Assets.fonts.dINMedium),
        ),
      ),
    );
  }
}
