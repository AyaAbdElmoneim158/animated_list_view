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
      title: 'Animated ListView, example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const AnimatedListViewExample(),
    );
  }
}

class AnimatedListViewExample extends StatelessWidget {
  const AnimatedListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated ListView Example'),
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: AnimatedListView(
          list: List.generate(10, (index) => _buildListItem(index)),
          separator: 16.0,
          duration: const Duration(milliseconds: 500),
        ),
      ),
    );
  }

  Widget _buildListItem(int index) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: index.isEven ? Colors.blue[100] : Colors.blue[200],
      ),
      child: Center(
        child: Text(
          'Item $index',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
