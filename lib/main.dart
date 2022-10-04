import 'package:flutter/material.dart';
import 'package:flutter_example_users/app.dart';
import 'package:flutter_example_users/config/locator.dart';

void main() {

  //Register my controllers...
  setUpLocators();

  runApp(const App());
}
