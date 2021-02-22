import 'dart:math';

class UniqueTodoGenerator {
  static List todoOptions = [
    "Wash Clothes",
    "Feed the Dogs",
    "Backup my Files",
    "Push to Remote on Friday",
    "Exercise",
    "Text Eva",
    "Call Pedro"
  ];
  static Random random = new Random();
  static String getTodo() {
    return todoOptions.removeAt(random.nextInt(todoOptions.length)).toString();
  }
}
