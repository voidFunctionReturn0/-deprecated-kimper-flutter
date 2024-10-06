// import 'package:dio/src/response.dart';
// import 'package:kimper_client/kimper_client.dart';
// import 'package:kimper_flutter/repo.dart';

// class Price {
//   late final Future<int> _value;

//   // TODO
//   Price(Ticker ticker, Exchange exchange) {
//     final url = _priceUrl(ticker, exchange);

//     _value = _getPrice(Repo.get(url));
//   }

//   String toStr(Currency currency) {
//     String unit = switch (currency) {
//       Currency.krw => "원",
//       Currency.usd => "달러",
//     };
//     return '$_value$unit';
//   }

//   Uri _priceUrl(Ticker ticker, Exchange exchange) {
//     return switch (ticker) {
//       Ticker.xrp => switch (exchange) {
//           Exchange.upbit =>
//             Uri.parse('https://api.upbit.com/v1/ticker?markets=KRW-XRP'),
//           Exchange.bybit => Uri.parse(
//               'https://api.bybit.com/spot/v3/public/quote/ticker/price?symbol=XRPUSDT'),
//         }
//     };
//   }

//   Future<int> _getPrice(Future<Response?> responseBody) {
//     if responseBody.ha
//   }
// }

class Price {
  final double value;

  Price(this.value);

  @override
  String toString() {
    return '$value원';
  }
}
