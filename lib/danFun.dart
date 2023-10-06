
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void simpleToast(String yourMessage) {
  Fluttertoast.showToast(
      msg: yourMessage,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white
  );
}

void simpleDialog(BuildContext context, TextEditingController myController, String value1){
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        // Retrieve the text the that user has entered by using the
        // TextEditingController.
        content: Text(myController.text),
      );
    },
  );
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}