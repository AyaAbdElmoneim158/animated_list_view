import 'package:animated_list_view/animated_list_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade200,
          title: const Text(
            "Plugin,example",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const Center(child: AnimatedListView()),
      ),
    );
  }
}
