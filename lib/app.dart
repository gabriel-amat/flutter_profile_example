import 'package:flutter/material.dart';
import 'package:flutter_example_users/screens/home/home_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      home: HomeScreen(),
    );
  }
}
