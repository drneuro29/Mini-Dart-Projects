import "dart:io";

String prompt(String promptText) {
  print(promptText);
  String answer = stdin.readLineSync()!;
  return answer;
}

void main() {
  double x = double.parse(prompt("what's x? "));
  double y = double.parse(prompt("what's y? "));
  String mathOperation = prompt("math operation(+ - * /): ");

  if (mathOperation == "+") {
    double result = x + y;
    print("${x} + ${y} = ${result}");
  } else if (mathOperation == "-") {
    double result = x - y;
    print("${x} - ${y} = ${result}");
  } else if (mathOperation == "*") {
    double result = x * y;
    print("${x} * ${y} = ${result}");
  } else if (mathOperation == "/") {
    double result = x / y;
    print("${x} / ${y} = ${result}");
  } else {
    print("Invalid math operation");
  }
}
