import 'package:flutter/cupertino.dart';
import 'package:webapp/utils/constants/colors.dart';

class KShadowStyle{
  static final verticalProductShadow=BoxShadow(
    color: KColors.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow=BoxShadow(
      color: KColors.darkerGrey.withOpacity(0.1),
      blurRadius: 50,
      offset: const Offset(0, 2)
  );
}