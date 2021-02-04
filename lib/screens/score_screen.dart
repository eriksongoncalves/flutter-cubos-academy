import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
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
          Expanded(child: Container()),
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
                onPressed: () => {},
                color: Color(0xffDA0175),
                textColor: Color(0XffF7F7F7),
                padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text('Jogar novamente',
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
