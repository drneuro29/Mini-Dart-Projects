import "dart:io";

String prompt(String promptText) {
  print(promptText);
  String answer = stdin.readLineSync()!;
  return answer;
}

void main() {
  String number = "7";
  String guess = "";

  while (guess != number) {
    guess = prompt("Enter a number: ");
  }

  print("You won!");
}
