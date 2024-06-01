import 'package:flutter/material.dart';
import 'core/constant_finals.dart';
import 'core/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: akademikRoute,
      routes: Routes.routes,
    );
  }
}
