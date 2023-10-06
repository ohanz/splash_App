
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

// void simpleDialog(BuildContext context, TextEditingController myController, String value1){
//   if(myController.text != null){
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           // Retrieve the text the that user has entered by using the
//           // TextEditingController.
//           content: Text(myController.text),
//         );
//       },
//     );
//   }
//
// }


void simpleDialog(BuildContext context, String value1){
  if(value1 != null){
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          // Retrieve the text the that user has entered by using the
          title: const Text("Splash Verse") ,
            content: Text("Hye there $value1! Welcome to Splash Verse", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
        );
      },
    );
  }

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