import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Expanded(
      flex: 3,
      child: Container(
        color: Colors.white,
        child: const Center(child: InputField()),
      ));
}

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GridView.count(
        crossAxisCount: 4,
        children: const [],
      );
}

class CalcButton extends StatelessWidget {
  const CalcButton({Key? key, required this.textValue}) : super(key: key);

  static const TextStyle buttonsTextStyle =
      TextStyle(fontSize: 32, fontWeight: FontWeight.bold);

  final String textValue;

  @override
  Widget build(BuildContext context) => Container(
        decoration: ShapeDecoration(shape: Border.all(color: Colors.blueGrey)),
        width: 100,
        child: TextButton(
          onPressed: () {},
          child: FittedBox(
            child: Text(
              textValue,
              style: buttonsTextStyle,
            ),
          ),
        ),
      );
}
