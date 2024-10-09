import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'package:dio/dio.dart';
import 'package:kimper_server/src/generated/protocol.dart';

// class KimchiPremiumService {
//   final delaySecond = 5;
//   // TODO: map to kimchi list
//   // final StreamController<Map<String, double?>> _controller =
//   //     StreamController.broadcast();
//   final ReceivePort _receivePort = ReceivePort();

//   KimchiPremiumService();

//   // Stream<Map<String, double>> get stream => _controller.stream;
//   // Stream<Map<String, double>> get stream => _receivePort.asBo

//   Future<void> start() async {
//     await Isolate.spawn(_getData, _receivePort.sendPort);

//     _receivePort.listen((message) {
//       // TODO: map to kimchi list
//       if (message is Map<String, double?>) {
//         _controller.add(message);
//       }
//     });
//   }

//   // void stop() {
//   //   _isolate?.kill(priority: Isolate.immediate);
//   //   _isolate = null;
//   //   _controller.close();
//   // }

//   void _getData(SendPort sendPort) async {
//     while (true) {
//       final upbitXrpPrice = await _getPrice(Exchange.upbit, Ticker.xrp);
//       final bybitXrpPrice = await _getPrice(Exchange.bybit, Ticker.xrp);

//       // TODO: 환율 & 김프 데이터 추가
//       // sendPort.send([
//       //   {
//       //     'ticker': Ticker.xrp.toString(),
//       //     'koreaExchange': Exchange.upbit.toString(),
//       //     'koreaExchangePrice': upbitXrpPrice,
//       //     'foreignExchange': Exchange.bybit.toString(),
//       //     'foreignExchangePrice': bybitXrpPrice,
//       //     'kimchiPrimeum': 0,
//       //   }
//       // ]);
//       sendPort.send({'koreaExchangePrice': upbitXrpPrice});

//       await Future.delayed(Duration(seconds: delaySecond));
//     }
//   }

//   Future<Map> _get(Uri url) async {
//     final response = await Dio().getUri(url);

//     return switch (response.statusCode) {
//       HttpStatus.ok => Map.from(response.data.first),
//       _ =>
//         throw '## Fetcher._get error - ${response.statusCode} ${response.statusMessage}'
//     };
//   }

//   Future<double> _getPrice(Exchange exchange, Ticker ticker) async {
//     final url = switch (exchange) {
//       Exchange.upbit => switch (ticker) {
//           Ticker.xrp =>
//             Uri.parse('https://api.upbit.com/v1/ticker?markets=KRW-XRP')
//         },
//       Exchange.bybit => switch (ticker) {
//           Ticker.xrp => Uri.parse(
//               'https://api.bybit.com/spot/v3/public/quote/ticker/price?symbol=XRPUSDT')
//         },
//     };

//     final responseBody = await _get(url);

//     return switch (exchange) {
//       Exchange.upbit => responseBody['trade_price'],
//       Exchange.bybit => responseBody['result']['price'],
//     };
//   }
// }

// TODO: 싱글턴?
class KimchiPremiumService {
  static final _delaySecond = 5;
  final _controller = StreamController.broadcast();
  final _receivePort = ReceivePort();

  Stream get stream => _controller.stream;

  Future<void> start() async {
    _receivePort.listen((data) => _controller.add(data));
    await Isolate.spawn(_getData, _receivePort.sendPort);
  }

  static Future<void> _getData(SendPort sendPort) async {
    while (true) {
      final double upbitXrpPrice = await _getPrice(Exchange.upbit, Ticker.xrp);
      final bybitXrpPrice = await _getPrice(Exchange.bybit, Ticker.xrp);

      sendPort.send(
        KimchiPremium(
          ticker: Ticker.xrp,
          koreaExchange: Exchange.upbit,
          koreaExchangePrice: upbitXrpPrice,
          foreignExchange: Exchange.bybit,
          foreignExchangePrice: bybitXrpPrice,
          kimchiPrimeum: 0,
        ),
      );
      await Future.delayed(Duration(seconds: _delaySecond));
    }
  }

  static Future<Response> _get(Uri url) async {
    print('## get $url');

    final response = await Dio().getUri(url);

    print('## response: ${response.data}');

    return switch (response.statusCode) {
      HttpStatus.ok => response,
      _ =>
        throw '## Fetcher._get error - ${response.statusCode} ${response.statusMessage}'
    };
  }

  static Future<double> _getPrice(Exchange exchange, Ticker ticker) async {
    final url = switch (exchange) {
      Exchange.upbit => switch (ticker) {
          Ticker.xrp =>
            Uri.parse('https://api.upbit.com/v1/ticker?markets=KRW-XRP')
        },
      Exchange.bybit => switch (ticker) {
          Ticker.xrp => Uri.parse(
              'https://api.bybit.com/spot/v3/public/quote/ticker/price?symbol=XRPUSDT')
        },
    };

    final response = await _get(url);

    return switch (exchange) {
      Exchange.upbit => response.data.first['trade_price'],
      Exchange.bybit => response.data['result']['price'],
    };
  }
}
