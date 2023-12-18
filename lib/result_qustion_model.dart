import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultQustion extends StatelessWidget {
  List<Map<String, Object>> summery;
  ResultQustion(this.summery, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: SizedBox(
        height: 300,
        child: SingleChildScrollView(
          child: Column(
            children: summery.map(
              (data) {
                return SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: data["Answer_Status"] as bool
                                ? Color.fromARGB(255, 6, 243, 121)
                                : Color.fromARGB(255, 248, 67, 67),
                          ),
                          width: 27,
                          child: Text(
                            data['Question_index'].toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data["Question"].toString(),
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${data['Correct_Answer']}",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue[400],
                                ),
                              ),
                              Text(
                                "${data['Selected_Answer']}",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
