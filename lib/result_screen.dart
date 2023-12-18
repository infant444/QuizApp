import 'package:flutter/material.dart';
import 'package:app2/data/Question.dart';
import 'package:app2/result_qustion_model.dart';

// ignore: must_be_immutable, camel_case_types
class resultScreen extends StatelessWidget {
  final void Function(String x) backtomain;
  resultScreen(this.backtomain, this.xyx, {super.key});
  List<String> xyx;
  int x = 0, y = 0;

  List<Map<String, Object>> summary() {
    List<Map<String, Object>> summery = [];
    for (var i = 0; i < xyx.length; i++) {
      summery.add({
        "Question_index": i + 1,
        "Question": Question[i].question,
        "Correct_Answer": Question[i].option[0],
        "Selected_Answer": xyx[i],
        "Answer_Status": (Question[i].option[0] == xyx[i]) ? true : false,
      });
    }
    return summery;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> summ = summary();
    final x = Question.length;
    final y = summ.where((data) {
      return data["Answer_Status"] == true;
    }).length;
    return SizedBox(
      height: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "You answered $x out of $y question are correctly!",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20,
                  fontFamily: "vampar",
                  letterSpacing: 1,
                  wordSpacing: 5),
            ),
            const SizedBox(
              height: 20,
            ),
            ResultQustion(summary()),
            OutlinedButton.icon(
              onPressed: () => {backtomain("startQuiz")},
              icon: const Icon(
                Icons.restart_alt_rounded,
              ),
              label: const Text("Restart the Quiz"),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.black,
                side: const BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                    style: BorderStyle.solid),
              ),
            ),
            OutlinedButton.icon(
              onPressed: () => {backtomain("start")},
              icon: const Icon(
                Icons.exit_to_app_rounded,
              ),
              label: const Text("Move to back"),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.black,
                side: const BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                    style: BorderStyle.solid),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
