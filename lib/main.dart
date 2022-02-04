import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'quizbrain.dart';

Quiz qb = Quiz();

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(42, 40, 40, 1.0),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: myapp(),
        )),
      ),
    ),
  );
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  List<Icon> scorekeeper = [];
  /* List<String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.'
  ];*/

  /*List<questionbank> questionanswers = [
    questionbank(
        q: 'You can lead a cow down stairs but not up stairs.', a: false),
    questionbank(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    questionbank(q: 'A slug\'s blood is green.', a: true)
  ];

List<bool> answers = [false, true, true];*/

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  qb.questionb(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(15),
            child: FlatButton(
                onPressed: () {
                  bool check = qb.quesans();

                  setState(() {
                    if (qb.isfinish() == true) {
                      Alert(
                        style: AlertStyle(
                          backgroundColor: Color.fromRGBO(42, 40, 40, 1.0),
                          titleStyle: TextStyle(color: Colors.white),
                          descStyle: TextStyle(color: Colors.white),
                        ),
                        context: context,
                        title: "Congratulations!",
                        desc: "You Have Completed Your Quiz",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "COOL",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            color: Colors.green,
                            width: 120,
                          )
                        ],
                      ).show();

                      qb.reset();
                      scorekeeper.clear();
                    } else {
                      if (check == true) {
                        scorekeeper.add(Icon(
                          Icons.check,
                          color: Colors.green,
                        ));
                      } else {
                        scorekeeper.add(
                          Icon(Icons.close, color: Colors.red),
                        );
                      }
                    }

                    qb.nextques();
                  });
                },
                child: Text(
                  'True',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green),
          )),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(15),
            child: FlatButton(
                onPressed: () {
                  bool check = qb.quesans();

                  setState(() {
                    if (qb.isfinish() == true) {
                      Alert(
                        style: AlertStyle(
                          backgroundColor: Color.fromRGBO(42, 40, 40, 1.0),
                          titleStyle: TextStyle(color: Colors.white),
                          descStyle: TextStyle(color: Colors.white),
                        ),
                        context: context,
                        title: "Congratulations!",
                        desc: "You Have Completed Your Quiz",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "COOL",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            color: Colors.green,
                            width: 120,
                          )
                        ],
                      ).show();
                      qb.reset();
                      scorekeeper.clear();
                    } else {
                      if (check == false) {
                        scorekeeper.add(Icon(
                          Icons.check,
                          color: Colors.green,
                        ));
                      } else {
                        scorekeeper.add(
                          Icon(Icons.close, color: Colors.red),
                        );
                      }
                    }

                    qb.nextques();
                  });
                },
                child: Text(
                  'False',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red),
          )),
          Row(children: scorekeeper)
        ],
      ),
    );
  }
}
