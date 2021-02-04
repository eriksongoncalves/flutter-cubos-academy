import 'package:flutter/material.dart';

import 'package:cubos_academy/models/question.dart';
import 'package:cubos_academy/screens/score_screen.dart';

class TriviaScreen extends StatefulWidget {
  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {
  int answer = 0;
  int score = 0;
  int index = 0;
  List<Question> questionList = Question.getQuestionsList();

  void changeAnswer(int value) {
    setState(() {
      answer = value;
    });
  }

  void verifyResponse(BuildContext context) {
    if (answer == questionList[index].answer) {
      score = score + 1;
    }

    if (index < questionList.length - 1) {
      setState(() {
        answer = 0;
        index++;
      });
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ScoreScreen(result: score, maximum: questionList.length)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff374952),
        centerTitle: true,
        title: Image(
          image: AssetImage('lib/assets/appbar-icon.png'),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(32, 56, 32, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('PERGUNTA 1',
                    style: TextStyle(fontSize: 16, color: Color(0xff4C4C4C))),
                SizedBox(
                  height: 16.0,
                ),
                Text(questionList[index].questionText,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff263238)))
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3)),
                    ]),
                child: RadioListTile(
                  value: 1,
                  groupValue: answer,
                  title: Text(questionList[index].option1),
                  onChanged: changeAnswer,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3)),
                    ]),
                child: RadioListTile(
                  value: 2,
                  groupValue: answer,
                  title: Text(questionList[index].option2),
                  onChanged: changeAnswer,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3)),
                    ]),
                child: RadioListTile(
                  value: 3,
                  groupValue: answer,
                  title: Text(questionList[index].option3),
                  onChanged: changeAnswer,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(1, 3)),
                    ]),
                child: RadioListTile(
                  value: 4,
                  groupValue: answer,
                  title: Text(questionList[index].option4),
                  onChanged: changeAnswer,
                ),
              ),
            ],
          )),
          Container(
            height: 87,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, -1))
            ]),
            child: Center(
              child: FlatButton(
                onPressed: () => verifyResponse(context),
                color: Color(0xffDA0175),
                textColor: Color(0XffF7F7F7),
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text('Responder',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
