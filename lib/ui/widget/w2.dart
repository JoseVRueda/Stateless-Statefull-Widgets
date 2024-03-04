import 'package:flutter/material.dart';

class W2 extends StatelessWidget {
  const W2({super.key, required this.number});
  final double number;

  @override
  Widget build(BuildContext context) {
    double parteDecimal = number - number.floor();

    return Container(
      key: const Key('W2'),
      width: 200,
      height: 200,
      color: parteDecimal > 0.4 ? Colors.grey : Colors.blueGrey, // should be grey when the decimal is bellow 0.4
    );
  }
}
