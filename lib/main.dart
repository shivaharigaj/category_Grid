import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const TextField(
            cursorColor: Colors.black,
          ),
        ),
        body: Homepage());
  }
}

