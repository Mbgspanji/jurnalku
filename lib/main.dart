import 'package:flutter/material.dart';
import 'dashboard.login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jurnalku',
      home: const DashboardLogin(),
    );
  }
}
