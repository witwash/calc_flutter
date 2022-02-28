import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({
    Key? key,
  }) : super(key: key);

  static const TextStyle textStyle = TextStyle(fontSize: 24);

  @override
  Widget build(BuildContext context) => Expanded(
        child: Container(
          padding: const EdgeInsets.all(5),
          color: Colors.blue,
          child: const Align(
            alignment: Alignment.centerRight,
            child: Text(
              '12345678901234567890',
              style: textStyle,
            ),
          ),
        ),
      );
}
