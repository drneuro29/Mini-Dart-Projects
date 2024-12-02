import "dart:io";

double promptDouble(String promptText) {
  print(promptText);
  double value = double.parse(stdin.readLineSync()!);
  return value;
}

class MathQuestion {
  String? question;
  double? answer;

  MathQuestion(String aQuestion, double anAnswer) {
    this.question = aQuestion;
    this.answer = anAnswer;
  }
}

void main() {
  List<MathQuestion> questions = [
    MathQuestion("1 + 1", 2.0),
    MathQuestion("10 - 2", 8.0),
    MathQuestion("10 * 9", 900.0)
  ];

  int score = 0;

  for (MathQuestion mathQuestion in questions) {
    double result = promptDouble(mathQuestion.question!);
    if (result == mathQuestion.answer) {
      score++;
    }
  }

  print("You got ${score}/${questions.length}");
}
