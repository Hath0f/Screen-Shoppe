import 'package:flutter/material.dart';

import 'customeText.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Custometext(text:"Hello")
      ],
    );
  }
}