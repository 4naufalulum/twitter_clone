import 'package:flutter/material.dart';

void showSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
  ));
}

String getNameFromEmail(String email) {
  //naufalulum33@gmail.com
  //List = [naufalulum33, @gmail.com]
  return email.split('@')[0];
}
