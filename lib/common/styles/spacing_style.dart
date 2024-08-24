import 'package:flutter/material.dart'; // Use material.dart for EdgeInsets
import 'package:webapp/utils/constants/size.dart';

class KSpacingStyle {
  // Padding that includes the app bar height at the top, and default spacing at the bottom
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: KSize.appBarHeight,
    bottom: KSize.defaultSpace,
    left: KSize.defaultSpace,
    right: KSize.defaultSpace,
  );
}
