import 'package:kimper_flutter/models/exchange_rate.dart';
import 'package:kimper_flutter/models/price.dart';

class KimchiPremium {
  late final double value;

  KimchiPremium(Price koreaExchangePrice, Price foreignExchangePrice,
      ExchangeRate exchangeRate) {
    value = ((koreaExchangePrice.value /
                (foreignExchangePrice.value * exchangeRate.value)) -
            1) *
        100;
  }
}
