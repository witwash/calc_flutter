import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Container(
          color: Colors.white,
          child: Center(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CalcButton(
                    textValue: 'C',
                  ),
                  const CalcButton(textValue: 'percent'),
                  const CalcButton(textValue: '/'),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.backspace,
                        color: Colors.blue,
                      ))
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    TextButton(onPressed: () {}, child: const Text('7')),
                    TextButton(onPressed: () {}, child: const Text('8')),
                    TextButton(onPressed: () {}, child: const Text('9')),
                  ],
                ),
              ),
              Row(
                children: [],
              ),
              Row(
                children: [],
              ),
              Row(
                children: [],
              ),
              Row(
                children: [],
              ),
            ],
          )),
        ));
  }
}

class CalcButton extends StatelessWidget {
  static const TextStyle buttonsTextStyle =
      TextStyle(fontSize: 32, fontWeight: FontWeight.bold);
  const CalcButton({Key? key, required this.textValue}) : super(key: key);

  final String textValue;

  @override
  Widget build(BuildContext context) {
    return Container(
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
}
