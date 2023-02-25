import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:inv_aligner/core/common/app_setting_page/presentation/app_setting_page.dart';
import 'package:inv_aligner/core/common/common_widget/common_app_bar.dart';
import 'package:inv_aligner/core/common/common_widget/text_field.dart';
import 'package:inv_aligner/core/general_export.dart';
import 'package:inv_aligner/core/utils/constant.dart';
import 'package:inv_aligner/core/utils/toast.dart';
import 'package:inv_aligner/featuers/auth/log_in/bloc/login_bloc.dart';
import 'package:inv_aligner/gen/assets.gen.dart';
import 'package:inv_aligner/generated/locale_keys.g.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is CheckLoaded) {
            showToast(msg: 'msg', isError: false);
          }
          if (state is Failure) {
            showToast(msg: state.message, isError: true);
          }
        },
        builder: (context, state) {
          return AppSettingPage(
            scaffoldKey: scaffoldKey,
            selectedPos: BottomNav.invi.index,
            body: Column(
              children: [
                CommonAppBar(
                    title: (LocaleKeys.inviAligner).tr(), isWithBack: true),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: Adaptive.px(55),
                      start: Adaptive.px(55),
                      end: Adaptive.px(55)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.only(start: Adaptive.px(10)),
                        child: Text(
                          (LocaleKeys.plzEnterUsPas).tr(),
                          style: const TextStyle(
                              color: Color.fromRGBO(16, 53, 97, 0.6)),
                        ),
                      ),
                      SizedBox(
                        height: Adaptive.px(30),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.only(start: Adaptive.px(25)),
                        child: Image.asset(
                          Assets.imgs.login.path,
                          width: Adaptive.px(250),
                          height: Adaptive.px(250),
                        ),
                      ),
                      SizedBox(
                        height: Adaptive.px(30),
                      ),
                      Text((LocaleKeys.userName).tr()),
                      TextFieldWidget(
                        hintText: (LocaleKeys.userName).tr(),
                        controller: userNameController,
                      ),
                      SizedBox(
                        height: Adaptive.px(14),
                      ),
                      Text((LocaleKeys.password).tr()),
                      TextFieldWidget(
                        hintText: (LocaleKeys.password).tr(),
                        controller: passwordController,
                      ),
                      SizedBox(
                        height: Adaptive.px(20),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (userNameController.text.trim().isNotEmpty &&
                        passwordController.text.trim().isNotEmpty) {
                      var bloc = BlocProvider.of<LoginBloc>(context);
                      bloc.add(CheckLogin(
                          userName: userNameController.text,
                          password: passwordController.text));
                    } else {
                      showToast(
                          msg: (LocaleKeys.allRequierd).tr(), isError: true);
                    }
                  },
                  child: Container(
                    width: Adaptive.px(160),
                    height: Adaptive.px(30),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(37, 124, 225, 1),
                        borderRadius:
                            BorderRadius.all(Radius.circular(Adaptive.px(10)))),
                    child: Center(
                        child: Text(
                      (LocaleKeys.logIn).tr(),
                      style: const TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  height: Adaptive.px(51),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
