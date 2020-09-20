import 'package:flutter/material.dart';
import 'Screens/home_page.dart';

void main() {
  runApp(MaterialApp(
    theme: new ThemeData(
        primaryColor: const Color(0xffB23121),
        accentColor: const Color(0xffD44638)),
    home: KMail(),
    debugShowCheckedModeBanner: false,
  ));
}
