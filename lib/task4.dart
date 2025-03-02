import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  if (Firebase.apps.isNotEmpty) {
    print("Firebase is initialized::${Firebase.app().options}");
  }
  runApp(const task4());
}

class task4 extends StatelessWidget {
  const task4({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: task44(),
    );
  }
}

class task44 extends StatefulWidget {
  const task44({super.key});

  @override
  State<task44> createState() => _task44State();
}

class _task44State extends State<task44> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
