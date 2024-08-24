import 'package:flutter/cupertino.dart';

class KCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Start from the top-left corner
    path.lineTo(0, size.height);

    // First curve
    final firstCurveStart = Offset(0, size.height - 20);
    final firstCurveEnd = Offset(30, size.height - 20);
    path.quadraticBezierTo(
      firstCurveStart.dx,
      firstCurveStart.dy,
      firstCurveEnd.dx,
      firstCurveEnd.dy,
    );

    // Second curve
    final secondCurveStart = Offset(30, size.height - 20);
    final secondCurveEnd = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
      secondCurveStart.dx,
      secondCurveStart.dy,
      secondCurveEnd.dx,
      secondCurveEnd.dy,
    );

    // Third curve
    final thirdCurveStart = Offset(size.width - 30, size.height - 20);
    final thirdCurveEnd = Offset(size.width, size.height);
    path.quadraticBezierTo(
      thirdCurveStart.dx,
      thirdCurveStart.dy,
      thirdCurveEnd.dx,
      thirdCurveEnd.dy,
    );

    // Closing the path back to the top-right corner
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
