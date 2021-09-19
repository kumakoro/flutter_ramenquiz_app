import 'package:flutter/material.dart';
import 'package:flutter_ramenquiz_app/header.dart';
import 'package:flutter_ramenquiz_app/question_name.dart';
import 'package:flutter_ramenquiz_app/texestyleset.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: Header(),
        backgroundColor : const Color(0xFFF5F5F6),
        body: const SafeArea(
          child: StartPage(),
        ),
      ),
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(this.context,
                MaterialPageRoute(
                    builder: (context) => Question(),
                ),
            );
          },
          child: Texestyleset('注文する'),
          style: ElevatedButton.styleFrom(
            side: const BorderSide(
              color: Colors.black, //枠線!
              width: 3, //枠線！
            ),

            padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 100,
              ),
            primary: Colors.greenAccent, //ボタンの背景色
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
      ),
    );
  }
}
