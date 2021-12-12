import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> Question = [
    'FAX stands for First Away Xerox',
    'Whaling / Whaling attack is a kind of phishing attacks that target senior executives and other high profile to access valuable information.',
    'Freeware is software that is available for use at no monetary cost.',
    'IPv6 Internet Protocol address is represented as eight groups of four Octal digits.',
    'The hexadecimal number system contains digits from 1 - 15.',
    'Octal number system contains digits from 0 - 7.',
    'MS Word is a hardware.',
    'CPU controls only input data of computer.',
    'CPU stands for Central Performance Unit',
    'The Language that the computer can understand is called Machine Language.'

  ];

  List<bool> answer = [false, true, true, false, false, true, false, false, false, true];

  int index = 0;
  int i = 0;

  List<Icon> icon = [];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          centerTitle: true,
          title: Text("Quiz"),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          '${Question[index]}',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    )),
                Expanded(
                    child: Center(
                        child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: icon,
                  ),
                ))),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: FlatButton(
                        minWidth: 350,
                        color: Colors.green,
                        onPressed: () {
                          setState(() {
                            if (answer[index] == true && answer[i] != null)
                              icon.add(Icon(
                                Icons.check,
                                color: Colors.green,
                              ));
                            else if (answer[i] != null)
                              icon.add(Icon(
                                Icons.close,
                                color: Colors.red,
                              ));
                            i++;
                            if (index < 10) index++;
                          });
                        },
                        child: Text(
                          'True',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  ),
                )),
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: FlatButton(
                            minWidth: 350,
                            color: Colors.red,
                            onPressed: () {
                              setState(() {
                                if (answer[index] == false && answer[i] != null)
                                  icon.add(Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ));
                                else if (answer[i] != null)
                                  icon.add(Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  ));
                                i++;
                                if (index < 3) index++;
                              });
                            },
                            child: Text(
                              'false',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
