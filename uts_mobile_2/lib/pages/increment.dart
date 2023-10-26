import 'package:flutter/material.dart';

class increment extends StatefulWidget {
  const increment({super.key});

  @override
  State<increment> createState() => _incrementState();
}

class _incrementState extends State<increment> {
  int _increment = 0;

  void _incrementCount() {
    setState(() {
      _increment++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Increment!'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Text('Tekan ITU! UNTUK MENAMBAH 1 SAYA!!!!!'),
              Text(_increment.toString()),
              ElevatedButton(onPressed: _incrementCount, child: Text('ITU!'))
            ],
          ),
        ),
      ),
    );
  }
}
