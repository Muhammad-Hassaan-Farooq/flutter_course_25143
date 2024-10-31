import 'package:flutter/material.dart';
import 'package:flutter_demo/provider/calculator_provider.dart';
import 'package:flutter_demo/views/calculator_app.dart';
import 'package:flutter_demo/views/history.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CalculatorProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF000000),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
            iconTheme:IconThemeData(color: Color(0xffff9f0b)),
        ),
        drawer: History(),
        body: CalculatorApp(),
      ),
    );
  }
}
