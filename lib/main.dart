import 'package:flutter/material.dart';
import 'dart:js' as js;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduGazer Demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void startEyeTracking() {
    js.context.callMethod('startWebGazer');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("EduGazer Home")),
      body: Center(
        child: ElevatedButton(
          onPressed: startEyeTracking,
          child: const Text("Start Eye Tracking"),
        ),
      ),
    );
  }
}
