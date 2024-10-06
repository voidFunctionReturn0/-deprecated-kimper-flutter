import 'package:kimper_client/kimper_client.dart';
import 'package:kimper_flutter/data/repo.dart';

class KimchiPremium {
  late final int value;

  KimchiPremium(
    final Ticker ticker,
    final Exchange koreaExchange,
    final Exchange foreignExchange,
    final double exchangeRate,
  ) {
    final koreaTickerPrice = _price(ticker, koreaExchange);
    final foreignTickerPrice = _price(ticker, foreignExchange);

    koreaTickerPrice;
    foreignTickerPrice;
    // TODO
    // value =
    //     (((koreaTickerPrice / (foreignTickerPrice * exchangeRate)) - 1) * 100)
    //         .round();
    value = 1;
  }

  String toStr() => '$value%';

  Future<int> _price(Ticker ticker, Exchange exchange) async {
    final url = _priceUrl(ticker, exchange);

    final responseBody = Repo.get(url);

    // TOdo
    print(responseBody);

    return Future<int>.value(1);
  }

  Uri _priceUrl(Ticker ticker, Exchange exchange) {
    return switch (ticker) {
      Ticker.xrp => switch (exchange) {
          Exchange.upbit =>
            Uri.parse('https://api.upbit.com/v1/ticker?markets=KRW-XRP'),
          Exchange.bybit => Uri.parse(
              'https://api.bybit.com/spot/v3/public/quote/ticker/price?symbol=XRPUSDT'),
        }
    };
  }
}
