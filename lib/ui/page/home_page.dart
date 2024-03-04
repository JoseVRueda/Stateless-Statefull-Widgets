import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {setState(() {
                    _number = 0;
                  });},
                  icon: const Icon(Icons.refresh),
                  key: const Key('Refresh')),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[W1(number: _number, sumar01: _sumar01, restar01: _restar01,), 
              W2(number: _number,), 
              W3(number: _number, sumar1: _sumar1, restar1: _restar1,)],
            ),
          ),
        ],
      )),
    );
  }

  void _sumar01(){
    setState(() {
      _number = _number + 0.1;
      _number = double.parse(_number.toStringAsFixed(1));
    });
  }

  void _restar01(){
    setState(() {
      _number = _number - 0.1;
      _number = double.parse(_number.toStringAsFixed(1));
    });
  }

  void _sumar1(){
    setState(() {
      _number = _number + 1.0;
      _number = double.parse(_number.toStringAsFixed(1));
    });
  }

  void _restar1(){
    setState(() {
      _number = _number - 1.0;
      _number = double.parse(_number.toStringAsFixed(1));
    });
  }
}
