import 'package:flutter/material.dart';
import 'package:flutter_ramenquiz_app/header.dart';
import 'package:flutter_ramenquiz_app/resultpage.dart';

class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {

  //問題を書く
  List<String> questions =[
    '第1問・・・・',
    '第2問・・・・',
    '第3問・・・・',
    '第4問・・・・',
    '第5問・・・・',
    '第6問・・・・',
    '第7問・・・・',
    '第8問・・・・',
    '第9問・・・・',
    '第10問・・・・',
  ];

  //答え
  List<bool> answers =[
    true,
    false,
    true,
    true,
    false,
    true,
    false,
    false,
    true,
    true,
  ];

  //問題番号の管理
  int questionNumber = 0;

  //正解数の管理
  int numberOfCorrectAnswer = 0;

  //問題の件数を定義
  int questionLeng = 0;



  //正解フラグ
  bool trueFlag = true;
  bool falseFlag = false;

  @override
  Widget build(BuildContext context) {
    //問題の件数
    questionLeng = questions.length;

    return MaterialApp(
      home: Scaffold(
        appBar: Header(),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '第${questionNumber+1}門・・・',
                  style: const TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                    onPressed:(){
                      check(trueFlag);
                    },
                      child: const Text(
                        '正しい',
                        style: TextStyle(
                          fontSize: 40.0,
                          color:Colors.black,
                        ),
                      ),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.black, //枠線!
                      width: 3, //枠線！
                    ),

                    primary: Colors.greenAccent, //ボタンの背景色
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),

                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.10),
                child: ElevatedButton(
                  onPressed:(){
                    check(falseFlag);
                  },
                  child: const Text(
                    '間違え',
                    style: TextStyle(
                      fontSize: 40.0,
                      color:Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.black, //枠線!
                      width: 3, //枠線！
                    ),

                    primary: Colors.greenAccent, //ボタンの背景色
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }


Future<void> check(bool flag) async {

    bool correctAnswer = answers[questionNumber];

  //正解だった場合、正解に1をたす
  if (correctAnswer == flag) {
    numberOfCorrectAnswer++;
    print('正解数は$numberOfCorrectAnswer');
  }
  //問題が10に達しない場合は問題に1をたす
  if (questionNumber +1 < questions.length){
    setState(() {
      questionNumber++;
    });
  } else {

    //結果画面に遷移
    Navigator.push(context,
      MaterialPageRoute(builder: (context) =>
           Resultpage(numberOfCorrectAnswer,questionLeng),
      ),
    );
  }
}

}

