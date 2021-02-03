import 'dart:ui';

import 'package:flutter/material.dart';

class TriviaScreen extends StatefulWidget {
  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {
  int answer = 0;

  void changeAnswer(int value) {
    setState(() {
      answer = value;
    });
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
                Text('O que é flutter',
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
                  title: Text(
                      'lorem ipsum dolor sit amet consectetur adipiscing elit?'),
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
                  title: Text(
                      'lorem ipsum dolor sit amet consectetur adipiscing elit?'),
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
                  title: Text(
                      'lorem ipsum dolor sit amet consectetur adipiscing elit?'),
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
                  title: Text(
                      'lorem ipsum dolor sit amet consectetur adipiscing elit?'),
                  onChanged: changeAnswer,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
