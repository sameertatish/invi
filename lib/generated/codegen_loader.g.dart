// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar_AR = {
  "userName": "اسم المستخدم",
  "password": "كلمة المرور",
  "plzEnterUsPas": "الرجاء ادخال اسم المستخدم وكلمة المرور",
  "arabic": "عربي",
  "english": "Eng",
  "wToSDC": "مرحبًا بكم في عيادة شريباتي لطب الأسنان ",
  "welcomTo": "مرحبا بكم",
  "shrebatyDentalClinic": "في عيادة شريباتي للأسنان",
  "freeVirtualConsultattion": "استشارة مجانية افتراضية",
  "ourServices": "خدماتنا",
  "makeAnAppontment": "إحجز موعد",
  "contactUs": "تواصل معنا",
  "aboutUs": "معلومات عنا",
  "logIn": "تسجيل دخول",
  "allRequierd": "كل الحقول مطلوبة",
  "inviAligner": "تقويم غير مرئي",
  "invi": "تقويم",
  "aligner": "غير مرئي",
  "iHaveAlreadyStartedTreatment": "لقد بدأت فعلا بالعلاج",
  "iWantToKnowMoreAboutIt": "لا, أريد ان اعرف أكثر حول التقويم الغير مرئي"
};
static const Map<String,dynamic> en_US = {
  "userName": "User Name",
  "password": "Password",
  "plzEnterUsPas": "Please Enter Your User Name And Password",
  "arabic": "Arabic",
  "english": "Eng",
  "wToSDC": "WELCOME TO SHREBATY DENTAL CLINIC",
  "welcomTo": "WELCOME TO",
  "shrebatyDentalClinic": "SHREBATY DENTAL CLINIC",
  "freeVirtualConsultattion": "FREE VIRTUAL CONSULTATION",
  "ourServices": "OUR SERVICES",
  "makeAnAppontment": "MAKE AN APPOINTMENT",
  "contactUs": "CONTACT US",
  "aboutUs": "ABOUT",
  "logIn": "Log In",
  "allRequierd": "All Requierd",
  "inviAligner": "INVI ALIGNER",
  "invi": "INVI",
  "aligner": "ALIGNER",
  "iHaveAlreadyStartedTreatment": "I HAVE ALREADY START INVI TREATMENT",
  "iWantToKnowMoreAboutIt": "NO, I WANT TO KNOW MORE ABOUT INVI ALIGNER"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar_AR": ar_AR, "en_US": en_US};
}
