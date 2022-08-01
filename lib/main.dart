import 'package:flutter/material.dart';
import 'package:focus_node/presenter/ui/register/register_page.dart';

import 'presenter/ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      initialRoute: '/',
      routes: {
        '/home': (context) => MyHomePage(),
        '/page-two': (context) => RegisterPage()
      },
    );
  }
}
