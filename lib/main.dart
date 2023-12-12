import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_3d_cube/cube.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
   Offset _offset = Offset.zero;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) =>
      setState(() {
       _offset+=details.delta;

      }),
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        body: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateX(_offset.dy * pi / 180)
              ..rotateY(_offset.dx * pi / 180),
              alignment: Alignment.center,
              child:const Center
              (child: CubeShape()),),
        
      ),
    );
  }
}
