
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