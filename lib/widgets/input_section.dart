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
        children: [
          TextCalcButton.function(textValue: 'C'),
          TextCalcButton.function(textValue: '%'),
          TextCalcButton.function(textValue: '/'),
          IconCalcButton.function(iconValue: Icons.backspace),
          TextCalcButton(textValue: '7'),
          TextCalcButton(textValue: '8'),
          TextCalcButton(textValue: '9'),
          TextCalcButton.function(textValue: '*'),
          TextCalcButton(textValue: '4'),
          TextCalcButton(textValue: '5'),
          TextCalcButton(textValue: '6'),
          TextCalcButton.function(textValue: '-'),
          TextCalcButton(textValue: '1'),
          TextCalcButton(textValue: '2'),
          TextCalcButton(textValue: '3'),
          TextCalcButton.function(textValue: '+'),
          TextCalcButton.function(textValue: '+/-'),
          TextCalcButton(textValue: '0'),
          TextCalcButton.function(textValue: '.'),
          TextCalcButton.function(
            textValue: '=',
            customColor: Colors.greenAccent,
          ),
        ],
      );
}

class IconCalcButton extends CalcButton {
  IconCalcButton({
    Key? key,
    required this.iconValue,
    this.customColor = CalcButton.defaultColor,
    this.iconColor = Colors.blueAccent,
  }) : super(
          key: key,
          backgroundColor: customColor,
          customChild: IconButton(
            onPressed: () {},
            icon: Icon(
              iconValue,
              color: iconColor,
            ),
          ),
        );

  IconCalcButton.function({
    Key? key,
    required this.iconValue,
    this.customColor = CalcButton.defaultColor,
    this.iconColor = Colors.blueAccent,
  }) : super(
          key: key,
          backgroundColor: customColor,
          customChild: IconButton(
            onPressed: () {},
            icon: Icon(
              iconValue,
              color: iconColor,
            ),
          ),
        );

  final IconData iconValue;
  final Color customColor;
  final Color iconColor;
}

class TextCalcButton extends CalcButton {
  TextCalcButton({
    Key? key,
    required this.textValue,
    this.customColor = CalcButton.defaultColor,
  }) : super(
          key: key,
          backgroundColor: customColor,
          customChild: TextButton(
            onPressed: () {},
            child: Text(
              textValue,
              style: CalcButton.defaultButtonTextStyle,
            ),
          ),
        );

  TextCalcButton.function({
    Key? key,
    required this.textValue,
    this.customColor = CalcButton.defaultColor,
  }) : super.function(
          key: key,
          backgroundColor: customColor,
          customChild: TextButton(
            onPressed: () {},
            child: Text(
              textValue,
              style: CalcButton.functionButtonTextStyle,
            ),
          ),
        );

  final String textValue;
  final Color customColor;
}

class CalcButton extends StatelessWidget {
  const CalcButton({
    Key? key,
    required this.customChild,
    this.backgroundColor = defaultColor,
  })  : textStyle = defaultButtonTextStyle,
        super(key: key);

  const CalcButton.function({
    Key? key,
    required this.customChild,
    this.backgroundColor = defaultColor,
  })  : textStyle = functionButtonTextStyle,
        super(key: key);

  static const TextStyle defaultButtonTextStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );

  static const TextStyle functionButtonTextStyle = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: Colors.blueAccent,
  );

  static const Color defaultColor = Colors.white;

  final TextStyle textStyle;
  final Color backgroundColor;
  final Widget customChild;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 50,
        width: 50,
        child: DecoratedBox(
          decoration: ShapeDecoration(
            shape: Border.all(color: Colors.blueGrey),
            color: backgroundColor,
          ),
          child: customChild,
        ),
      );
}
