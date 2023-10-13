void main(List<String> args) {
  if (args.length != 1) {
    print("Please provide one argument.");
    return;
  }

  String input = args[0];
  int number = int.tryParse(input);

  if (number == null) {
    print("Invalid input. Please provide a valid integer.");
  } else {
    print("$number");
    if (number > 0) {
      print("is positive");
    } else if (number == 0) {
      print("is zero");
    } else {
      print("is negative");
    }
  }
}
