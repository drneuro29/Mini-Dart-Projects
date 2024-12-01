import "dart:io";

String prompt(String promptText) {
  print(promptText);
  String answer = stdin.readLineSync()!;
  return answer;
}

void main() {
  String number = "7";
  String guess = "";
  int guessCount = 0;
    
  while (guess != number) {
    guess = prompt("Enter a number: ");
    guessCount++;
  }

  print("You won in ${guessCount} guesses!");
}
