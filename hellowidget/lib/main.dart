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
        home: FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Andreyas"),
        actions: <Widget>
            //Icon Di Kanan Appbar
            [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
        leading: IconButton
            //Icon Di Kiri Appbar
            (
                onPressed: () {},
                icon: const Icon(Icons.home, color: Colors.black)),
      ),
      body: const Center(
        child: Text("Hallo Andreyas"),
      ),
    );
  }
}
