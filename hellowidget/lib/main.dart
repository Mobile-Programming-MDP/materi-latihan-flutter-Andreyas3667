import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hallo Widget",
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Andreyas"),
          ),
          body: const Center(
            child: Text("Hallo Andreyas"),
          ),
        ));
  }
}
