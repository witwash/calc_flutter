import 'package:calc_flutter/pages/calc_page.dart';
import 'package:flutter/material.dart';

class CalcApp extends StatelessWidget {
  const CalcApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: 'Material App',
        home: Scaffold(
          body: SafeArea(child: CalcPage()),
        ),
      );
}
