import 'package:flutter/material.dart';

class startscreen extends StatelessWidget {
  startscreen(this.switchable, {super.key});
  final void Function(String x) switchable;
  @override
  Widget build(Object context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        InkWell(
          onLongPress: () => {switchable("edit")},
          child: ClipOval(
            child: Image.asset(
              "assert/images/intro.jpeg",
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Start Quiz for fun",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              letterSpacing: 2,
              wordSpacing: 4),
        ),
        OutlinedButton.icon(
          onPressed: start,
          label: const Text(
            "Start",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 2,
                wordSpacing: 4,
                fontSize: 24),
          ),
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            weight: 24,
          ),
        ),
      ]),
    );
  }

  void start() {
    switchable("startQuiz");
  }
}
