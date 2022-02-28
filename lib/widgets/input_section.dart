import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.white,
        child: const InputField(),
      );
}

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        primary: true,
        padding: EdgeInsets.zero,
        children: const [
          CalcButton(textValue: 'C'),
          CalcButton(textValue: '%'),
          CalcButton(textValue: '/'),
          CalcButton(textValue: '<-'),
          CalcButton(textValue: '7'),
          CalcButton(textValue: '8'),
          CalcButton(textValue: '9'),
          CalcButton(textValue: '*'),
          CalcButton(textValue: '4'),
          CalcButton(textValue: '5'),
          CalcButton(textValue: '6'),
          CalcButton(textValue: '-'),
          CalcButton(textValue: '1'),
          CalcButton(textValue: '2'),
          CalcButton(textValue: '3'),
          CalcButton(textValue: '+'),
          CalcButton(textValue: '+/-'),
          CalcButton(textValue: '0'),
          CalcButton(textValue: '.'),
          CalcButton(textValue: '='),
        ],
      );
}

class CalcButton extends StatelessWidget {
  const CalcButton({
    Key? key,
    required this.textValue,
    this.textStyle = buttonsTextStyle,
  }) : super(key: key);

  static const TextStyle buttonsTextStyle =
      TextStyle(fontSize: 32, fontWeight: FontWeight.bold);

  final String textValue;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 50,
        width: 50,
        child: DecoratedBox(
          decoration:
              ShapeDecoration(shape: Border.all(color: Colors.blueGrey)),
          child: TextButton(
            onPressed: () {},
            child: Text(
              textValue,
              style: buttonsTextStyle,
            ),
          ),
        ),
      );
}
