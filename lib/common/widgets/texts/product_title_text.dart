import 'package:flutter/material.dart';

class KProductTitleText extends StatelessWidget {
  const KProductTitleText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
  });

  final String title; // Title text to display
  final bool smallSize; // Determines if the text should be small
  final int maxLines; // Maximum number of lines for the text
  final TextAlign textAlign; // Text alignment

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: smallSize ? 14.0 : 16.0, // Adjust font size based on smallSize
      // Make text bold
      ),
      overflow: TextOverflow.ellipsis, // Handle overflow
      maxLines: maxLines, // Set max lines for the text
      textAlign: textAlign, // Set text alignment
    );
  }
}
