import 'package:flutter/widgets.dart';

class SizeConfig {
  static double widthInPx = 1080;
  static double heightInPx = 1920;
  static double defaultSize = 21;
  static MediaQueryData? _mediaQueryData;
  static double pixelRatio = 0.0;
  static double screenWidth  = 0.0;
  static double screenHeight  = 0.0;
  static double defaultHeight  = 0.0;
  static double defaultWidth  = 0.0;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    pixelRatio = _mediaQueryData!.devicePixelRatio;
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    defaultHeight = defaultSize * screenHeight / heightInPx;
    defaultWidth = defaultSize * screenWidth / widthInPx;
  }
}
