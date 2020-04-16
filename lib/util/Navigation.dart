import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigation {
  Navigation._();

  static void navigate(BuildContext context, Function(BuildContext) builder) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: builder),
    );
  }

  static void goBack(BuildContext context) => Navigator.pop(context);
}
