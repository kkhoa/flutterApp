import 'package:flutter/material.dart';
import 'package:webapp/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:webapp/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class KChoiceChip extends StatelessWidget {
  const KChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor=KHelperFunctions.getColor(text)!=null;
    return ChoiceChip(
      label:isColor ?const SizedBox():  Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? KColors.white : null),
      avatar: isColor? KCircularContainer(width: 50,height: 50 ,backgroundColor: KHelperFunctions.getColor(text)!,):null,
      shape: isColor?  const CircleBorder():null,
      labelPadding: isColor?  const EdgeInsets.all(0):null,
      padding: isColor?  const EdgeInsets.all(0):null,
      backgroundColor: isColor? KHelperFunctions.getColor(text):null,
    );
  }
}
