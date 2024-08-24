import 'package:flutter/material.dart';
import 'package:webapp/common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edge_widget.dart';

class KPrimaryHeaderContainer extends StatelessWidget {
  const KPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return KCurvedEdgeWidget(
      child: Container(
        color: KColors.primary, // Ensure this is a visible color
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: KCircularContainer(
                backgroundColor: KColors.textWhite.withOpacity(0.1),
                width: 100, // Define width
                height: 100, // Define height
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: KCircularContainer(
                backgroundColor: KColors.textWhite.withOpacity(0.1),
                width: 100, // Define width
                height: 100, // Define height
              ),
            ),
            // Ensure the child is not hidden
             child,

          ],
        ),
      ),
    );
  }
}
