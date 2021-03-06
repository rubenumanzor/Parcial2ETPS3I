import 'package:flutter/material.dart';
import 'package:parcial2_flutter/constants.dart';
import 'package:parcial2_flutter/screens/home/home_screen.dart';

void main() {
  runApp(Parcial2());
}

class Parcial2 extends StatelessWidget {
  // This widget is the root of your application.
  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}
