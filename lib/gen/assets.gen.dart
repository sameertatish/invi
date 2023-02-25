/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/DIN-BlackAlternate.ttf
  String get dINBlackAlternate => 'assets/fonts/DIN-BlackAlternate.ttf';

  /// File path: assets/fonts/DIN-Bold.ttf
  String get dINBold => 'assets/fonts/DIN-Bold.ttf';

  /// File path: assets/fonts/DIN-Light.ttf
  String get dINLight => 'assets/fonts/DIN-Light.ttf';

  /// File path: assets/fonts/DIN-Medium.ttf
  String get dINMedium => 'assets/fonts/DIN-Medium.ttf';

  /// File path: assets/fonts/DIN-Regular.ttf
  String get dINRegular => 'assets/fonts/DIN-Regular.ttf';

  /// File path: assets/fonts/DIN-RegularAlternate.ttf
  String get dINRegularAlternate => 'assets/fonts/DIN-RegularAlternate.ttf';

  /// List of all assets
  List<String> get values => [
        dINBlackAlternate,
        dINBold,
        dINLight,
        dINMedium,
        dINRegular,
        dINRegularAlternate
      ];
}

class $AssetsImgsGen {
  const $AssetsImgsGen();

  /// File path: assets/imgs/login.png
  AssetGenImage get login => const AssetGenImage('assets/imgs/login.png');

  /// File path: assets/imgs/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/imgs/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [login, logo];
}

class $AssetsLangGen {
  const $AssetsLangGen();

  /// File path: assets/lang/ar_AR.json
  String get arAR => 'assets/lang/ar_AR.json';

  /// File path: assets/lang/en_US.json
  String get enUS => 'assets/lang/en_US.json';

  /// List of all assets
  List<String> get values => [arAR, enUS];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/arrow_right_solid.svg
  SvgGenImage get arrowRightSolid =>
      const SvgGenImage('assets/svg/arrow_right_solid.svg');

  /// List of all assets
  List<SvgGenImage> get values => [arrowRightSolid];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImgsGen imgs = $AssetsImgsGen();
  static const $AssetsLangGen lang = $AssetsLangGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
