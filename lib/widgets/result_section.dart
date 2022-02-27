import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Expanded(
        flex: 2,
        child: Container(
          color: Colors.blue,
          child: const Center(child: Text('Result will be here')),
        ),
      );
}
