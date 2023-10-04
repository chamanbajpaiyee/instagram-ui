import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        // useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
