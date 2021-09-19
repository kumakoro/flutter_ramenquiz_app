import 'package:flutter/material.dart';
class Texestyleset extends StatelessWidget {

  String textstyleset;

  Texestyleset(this.textstyleset);

  @override
  Widget build(BuildContext context) {
    return Text(textstyleset,
        style: const TextStyle(
          fontSize: 50.50,
          color:Colors.black,
        ),
      );
  }
}