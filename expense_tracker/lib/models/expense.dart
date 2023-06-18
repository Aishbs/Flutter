import 'package:uuid';

class Expense {
  Expense({required this.title, required this.amount, required this.date,});

  final String id;
  final String title;
  final double amount;
  final DateTime date;


}
