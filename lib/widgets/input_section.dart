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
          CalcButton.function(textValue: 'C'),
          CalcButton.function(textValue: '%'),
          CalcButton.function(textValue: '/'),
          CalcButton.function(textValue: '<-'),
          CalcButton(textValue: '7'),
          CalcButton(textValue: '8'),
          CalcButton(textValue: '9'),
          CalcButton.function(textValue: '*'),
          CalcButton(textValue: '4'),
          CalcButton(textValue: '5'),
          CalcButton(textValue: '6'),
          CalcButton.function(textValue: '-'),
          CalcButton(textValue: '1'),
          CalcButton(textValue: '2'),
          CalcButton(textValue: '3'),
          CalcButton.function(textValue: '+'),
          CalcButton.function(textValue: '+/-'),
          CalcButton(textValue: '0'),
          CalcButton.function(textValue: '.'),
          CalcButton.function(
              textValue: '=', backgroundColor: Colors.greenAccent),
        ],
      );
}

class CalcButton extends StatelessWidget {
  const CalcButton({
    Key? key,
    required this.textValue,
    this.backgroundColor = defaultColor,
  })  : textStyle = defaultButtonTextStyle,
        super(key: key);

  const CalcButton.function({
    Key? key,
    required this.textValue,
    this.backgroundColor = defaultColor,
  })  : textStyle = functionButtonTextStyle,
        super(key: key);

  static const TextStyle defaultButtonTextStyle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: Colors.grey,
  );

  static const TextStyle functionButtonTextStyle = TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    color: Colors.blueAccent,
  );

  static const Color defaultColor = Colors.white;

  final String textValue;
  final TextStyle textStyle;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 50,
        width: 50,
        child: DecoratedBox(
          decoration: ShapeDecoration(
            shape: Border.all(color: Colors.blueGrey),
            color: backgroundColor,
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              textValue,
              style: textStyle,
            ),
          ),
        ),
      );
}
