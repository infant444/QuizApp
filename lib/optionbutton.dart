import 'package:flutter/material.dart';

// ignore: must_be_immutable
class optionbutton extends StatelessWidget {
  String text;
  void Function() ans;
  optionbutton(this.text, this.ans, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(7.5),
        child: ElevatedButton(
          onPressed: ans,
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(174, 3, 115, 130),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 45),
              side: const BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: 2,
                  style: BorderStyle.solid,
                  strokeAlign: double.minPositive),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20 * 3))),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "vampar", letterSpacing: 3),
          ),
        ));
  }
}
