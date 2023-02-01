class Transaction {
  final String id;
  final String expense;
  final double value;
  final DateTime date;

  Transaction({
    required this.id,
    required this.expense,
    required this.value,
    required this.date,
  });
}
