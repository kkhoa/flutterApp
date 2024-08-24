import 'package:flutter/material.dart';

import '../../../utils/constants/size.dart';
class KGridLayout extends StatelessWidget {
  const KGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
  });
  final int itemCount;
  final Widget? Function(BuildContext,int) itemBuilder;
  final double mainAxisExtent;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: KSize.gridViewSpacing,
        mainAxisSpacing: KSize.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}