
import 'package:flutter/cupertino.dart';
import 'package:webapp/common/widgets/custom_shapes/curved_edges/curved_edge.dart';

class KCurvedEdgeWidget extends StatelessWidget {
  const KCurvedEdgeWidget({
    super.key,
    required this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: KCustomCurvedEdges(),
      child: child,
    );
  }
}
