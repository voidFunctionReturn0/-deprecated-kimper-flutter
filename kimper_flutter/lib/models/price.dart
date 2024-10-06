import 'package:kimper_client/kimper_client.dart';

class Price {
  late final int value;

  // TODO
  Price(Ticker ticker, Exchange exchange) {
    value = 300;
  }

  String toStr(Currency currency) {
    String unit = switch (currency) {
      Currency.krw => "원",
      Currency.usd => "달러",
    };
    return '$value$unit';
  }
}
