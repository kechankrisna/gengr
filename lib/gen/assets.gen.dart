/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/icons
  $AssetsImagesIconsGen get icons => const $AssetsImagesIconsGen();
}

class $AssetsImagesIconsGen {
  const $AssetsImagesIconsGen();

  /// File path: assets/images/icons/apple.svg
  SvgGenImage get apple => const SvgGenImage('assets/images/icons/apple.svg');

  /// File path: assets/images/icons/behance.svg
  SvgGenImage get behance =>
      const SvgGenImage('assets/images/icons/behance.svg');

  /// File path: assets/images/icons/dribbble.svg
  SvgGenImage get dribbble =>
      const SvgGenImage('assets/images/icons/dribbble.svg');

  /// File path: assets/images/icons/dropbox.svg
  SvgGenImage get dropbox =>
      const SvgGenImage('assets/images/icons/dropbox.svg');

  /// File path: assets/images/icons/facebook.svg
  SvgGenImage get facebook =>
      const SvgGenImage('assets/images/icons/facebook.svg');

  /// File path: assets/images/icons/github.svg
  SvgGenImage get github => const SvgGenImage('assets/images/icons/github.svg');

  /// File path: assets/images/icons/google.svg
  SvgGenImage get google => const SvgGenImage('assets/images/icons/google.svg');

  /// File path: assets/images/icons/instragram.svg
  SvgGenImage get instragram =>
      const SvgGenImage('assets/images/icons/instragram.svg');

  /// File path: assets/images/icons/linkedin.svg
  SvgGenImage get linkedin =>
      const SvgGenImage('assets/images/icons/linkedin.svg');

  /// File path: assets/images/icons/messenger.svg
  SvgGenImage get messenger =>
      const SvgGenImage('assets/images/icons/messenger.svg');

  /// File path: assets/images/icons/pinterest.svg
  SvgGenImage get pinterest =>
      const SvgGenImage('assets/images/icons/pinterest.svg');

  /// File path: assets/images/icons/reddit.svg
  SvgGenImage get reddit => const SvgGenImage('assets/images/icons/reddit.svg');

  /// File path: assets/images/icons/skype.svg
  SvgGenImage get skype => const SvgGenImage('assets/images/icons/skype.svg');

  /// File path: assets/images/icons/slack.svg
  SvgGenImage get slack => const SvgGenImage('assets/images/icons/slack.svg');

  /// File path: assets/images/icons/snapchat.svg
  SvgGenImage get snapchat =>
      const SvgGenImage('assets/images/icons/snapchat.svg');

  /// File path: assets/images/icons/spotify.svg
  SvgGenImage get spotify =>
      const SvgGenImage('assets/images/icons/spotify.svg');

  /// File path: assets/images/icons/telegram.svg
  SvgGenImage get telegram =>
      const SvgGenImage('assets/images/icons/telegram.svg');

  /// File path: assets/images/icons/tiktok.svg
  SvgGenImage get tiktok => const SvgGenImage('assets/images/icons/tiktok.svg');

  /// File path: assets/images/icons/tripadvisor.svg
  SvgGenImage get tripadvisor =>
      const SvgGenImage('assets/images/icons/tripadvisor.svg');

  /// File path: assets/images/icons/twitch.svg
  SvgGenImage get twitch => const SvgGenImage('assets/images/icons/twitch.svg');

  /// File path: assets/images/icons/vimeo.svg
  SvgGenImage get vimeo => const SvgGenImage('assets/images/icons/vimeo.svg');

  /// File path: assets/images/icons/whatsapp.svg
  SvgGenImage get whatsapp =>
      const SvgGenImage('assets/images/icons/whatsapp.svg');

  /// File path: assets/images/icons/x.svg
  SvgGenImage get x => const SvgGenImage('assets/images/icons/x.svg');

  /// File path: assets/images/icons/xbox.svg
  SvgGenImage get xbox => const SvgGenImage('assets/images/icons/xbox.svg');

  /// File path: assets/images/icons/youtube.svg
  SvgGenImage get youtube =>
      const SvgGenImage('assets/images/icons/youtube.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        apple,
        behance,
        dribbble,
        dropbox,
        facebook,
        github,
        google,
        instragram,
        linkedin,
        messenger,
        pinterest,
        reddit,
        skype,
        slack,
        snapchat,
        spotify,
        telegram,
        tiktok,
        tripadvisor,
        twitch,
        vimeo,
        whatsapp,
        x,
        xbox,
        youtube
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = true;

  final String _assetName;

  final Size? size;
  final bool _isVecFormat;

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
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture(
      _isVecFormat
          ? AssetBytesLoader(_assetName,
              assetBundle: bundle, packageName: package)
          : SvgAssetLoader(_assetName,
              assetBundle: bundle, packageName: package),
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
