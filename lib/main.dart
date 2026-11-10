import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Tracker',
      theme: ThemeData(colorSchemeSeed: Colors.indigo),
      home: const TaskPage(),
    );
  }
}

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tasks = ['Install Flutter', 'Push to GitHub', 'Learn setState'];

    return Scaffold(
      appBar: AppBar(title: const Text('Task Tracker')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.check_circle_outline),
            title: Text(tasks[index]),
          );
        },
      ),
    );
  }
}