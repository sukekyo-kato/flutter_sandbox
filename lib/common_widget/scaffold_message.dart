import 'package:flutter/material.dart';

final rootScaffoldKey = GlobalKey<ScaffoldMessengerState>();

void showRootScaffoldMessage(String message) {
  rootScaffoldKey.currentState?.showSnackBar(
    SnackBar(content: Text(message)),
  );
}
