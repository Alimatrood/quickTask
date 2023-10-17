import 'package:flutter/material.dart';
import 'package:test/quick_task_list.dart';

void main() {
  runApp(MaterialApp(
    // theme: ThemeData().copyWith(
    //     useMaterial3: true,
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan)),
    // darkTheme: ThemeData().copyWith(
    //     useMaterial3: true,
    //     colorScheme: ColorScheme.fromSeed(
    //         seedColor: const Color.fromARGB(255, 16, 71, 71))),
    home: Scaffold(
      appBar: AppBar(
        title: const Text('QuickTask'),
      ),
      body: const QuickTaskList(),
    ),
  ));
}
