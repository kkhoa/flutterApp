import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class KHelperFunctions {
  static Color? getColor(String value) {
    switch (value.toLowerCase()) {
      case 'red':
        return Colors.red;
      case 'green':
        return Colors.green;
      case 'blue':
        return Colors.blue;
      case 'yellow':
        return Colors.yellow;
      case 'orange':
        return Colors.orange;
      case 'purple':
        return Colors.purple;
      case 'pink':
        return Colors.pink;
      case 'brown':
        return Colors.brown;
      case 'grey':
        return Colors.grey;
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      case 'cyan':
        return Colors.cyan;
      case 'indigo':
        return Colors.indigo;
      case 'lime':
        return Colors.lime;
      case 'teal':
        return Colors.teal;
      case 'amber':
        return Colors.amber;
      case 'deepOrange':
        return Colors.deepOrange;
      case 'deepPurple':
        return Colors.deepPurple;
      case 'lightBlue':
        return Colors.lightBlue;
      case 'lightGreen':
        return Colors.lightGreen;
      case 'mint':
        return const Color(0xFF98FF98); // Custom color
      case 'skyBlue':
        return const Color(0xFF87CEEB); // Custom color
      default:
        return null; // Return null if color is not recognized
    }
  }
  static void showSnackBar(String message){
    ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(content: Text(message)),
    );
  }
  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  static void navigateToScreen(BuildContext context,Widget screen){
    Navigator.push(context, MaterialPageRoute(builder: (_)=>screen),);
  }
  static String truncateText (String text , int maxLength){
    if (text.length<= maxLength){
      return text;
    } else{
      return '${text.substring(0,maxLength)}...';
    }
  }
  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }
  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }
  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }
  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }
  static String getFormattedDate(DateTime date,{String format ='dd MMM yyyy'}){
    return DateFormat(format).format(date);
  }
  static List<K> removeDuplicate<K>(List<K> list){
    return list.toSet().toList();
  }static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];

    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
        i, i + rowSize > widgets.length ? widgets.length : i + rowSize,
      );

      wrappedList.add(Row(
        children: rowChildren,
      ));
    }

    return wrappedList;
  }
}