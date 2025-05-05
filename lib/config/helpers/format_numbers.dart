import 'package:intl/intl.dart';

class FormatNumbers {
  static String humanReadableNumber(double number) {
    final numberFormated = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
    return numberFormated;
  }
}
