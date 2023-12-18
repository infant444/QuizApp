import 'package:flutter/material.dart';
import 'package:app2/optionbutton.dart';
import 'package:app2/data/Question.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen(this.anns, {super.key});
  final void Function(String y) anns;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  int i = 0;
  final list = Question;

  @override
  Widget build(Object context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                list[i].question,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 16, 63, 203),
                  fontWeight: FontWeight.w500,
                  wordSpacing: 4,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // for (int j = 0; j < list[i].Suffeledlist().length; j++)
              ...list[i].Suffeledlist().map((option) {
                return optionbutton(
                    option,
                    // ignore: unnecessary_set_literal
                    () => {
                          setState(() {
                            widget.anns(option);
                            if (i < list.length - 1) {
                              i = i + 1;
                            } else {
                              print("finished quiz");
                            }
                          })
                        });
              })
            ],
          ),
        ));
  }
}
