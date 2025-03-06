import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; // Import this for kIsWeb & defaultTargetPlatform

double getHeight(context) {
  return MediaQuery.of(context).size.height;
}

double getWidth(context) {
  return MediaQuery.of(context).size.width;
}

double getResponsiveText(context) {
  return MediaQuery.of(context).size.height * 0.001;
}

double getResponsive(context) {
  if (kIsWeb) {
    return 0.9; // Adjust for web
  } else {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return 0.8;
      case TargetPlatform.iOS:
        return 0.9;
      case TargetPlatform.windows:
        return 1;
      default:
        return 0.9; // Default for other platforms
    }
  }
}
