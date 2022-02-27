import 'package:calc_flutter/widgets/input_section.dart';
import 'package:calc_flutter/widgets/result_section.dart';
import 'package:flutter/material.dart';

class CalcPage extends StatelessWidget {
  const CalcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        child: Column(children: const [ResultWidget(), InputWidget()]),
      );
}
