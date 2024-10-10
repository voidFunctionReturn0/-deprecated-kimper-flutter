import 'package:intl/intl.dart';

class PriceFlutter {
  static String toStr(double price) {
    return '${NumberFormat('###,###,###.####').format(price)}원';
  }
}
