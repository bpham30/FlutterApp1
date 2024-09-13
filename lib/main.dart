import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count = 0;
  bool _showImg1 = true;

  void _handleImgSwitch() {
    setState(() {
      _showImg1 = !_showImg1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CW 1'),
        backgroundColor: Colors.orange,
        centerTitle: true,
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_count',
              style: const TextStyle(
                  fontSize: 24,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset(_showImg1 ? 'assets/img1.png' : 'assets/img2.png', width: 300, height: 300,),
            ElevatedButton(onPressed: _handleImgSwitch, style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange, ), child: const Text('Switch Image', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16), ) ),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment',
        backgroundColor: Colors.orange,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
