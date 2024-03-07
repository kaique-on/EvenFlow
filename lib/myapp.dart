import 'package:evenflow/homepage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

