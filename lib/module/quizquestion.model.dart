class QuizQuestion {
  const QuizQuestion(this.question, this.option);
  final String question;
  final List<String> option;

  List<String> Suffeledlist() {
    final List<String> sl = List.of(option);
    sl.shuffle();
    return sl;
  }
}
