import 'package:flutter/material.dart';
import 'package:flutter_ramenquiz_app/Start.dart';
import 'package:flutter_ramenquiz_app/header.dart';

class Resultpage extends StatelessWidget {

  int numberOfCorrectAnswer;
  int questionLeng;

  Resultpage(this.numberOfCorrectAnswer, this.questionLeng);

  Widget resultWords(){
    if (numberOfCorrectAnswer <6) {
      return const Text('一つ目');

    } else if (numberOfCorrectAnswer <9) {
      return const Text('二つ目');

    } else {
      return const Text('三つ目');
    }

  }

  List<String> answerQuest = [
    '全然ダメやん',
    'あれれ、',
    'まだまだやな',
    '第4問よんよんよん',
    '第5問ごごごのご',
    '第6問ろくろっくび',
    '第7問おおあたり',
    '第8問パーちん',
    '第9問くっくっくっく',
    '完璧やん！',
  ];


  @override
  Widget build(BuildContext context) {
    print('回答画面きたよ$questionLeng');
    print('正解数は$numberOfCorrectAnswer');
    return MaterialApp(
      home: Scaffold(
        appBar: Header(),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text('$questionLeng問中$numberOfCorrectAnswer門正解!!',style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(answerQuest[numberOfCorrectAnswer-1],style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
            ),
            resultWords(),
            ElevatedButton(
              onPressed:(){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>
                      Start(),
                  ),
                );

              },
              child: const Text(
                '最初に戻る',
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
          ],
        ),
      ),
    );
  }
}

      /*
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFe91e63),
          ),
          body : Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '$questionLeng問中、${numberOfCorrectAnswer+1}門正解!!${answerQuest[numberOfCorrectAnswer]}',
                    style: const TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: SizedBox(
                      width: 350,
                      height: 100,
                    child: ElevatedButton(onPressed: () {
                          //結果画面に遷移
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                                Start(),
                            ),
                          );
                        },
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

                      child: const Text('最初に戻る',
                        style: TextStyle(
                          fontSize: 40.0,
                          color:Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
      ),
    );



    );
  }
}
 */