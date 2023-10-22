import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/config/theme/app_themes.dart';
import 'package:flutter_clean_architecture/features/todo_list/presentation/pages/home/todo_list.dart';
import 'package:flutter_clean_architecture/injection_container.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TodoList(),
      theme: theme(),
    );
  }
}
