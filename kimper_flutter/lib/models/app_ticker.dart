import 'package:kimper_client/kimper_client.dart';

class AppTicker {
  final Ticker ticker;
  late final String nameKorean;
  late final String nameTicker;

  AppTicker(this.ticker) {
    switch (ticker) {
      case Ticker.xrp:
        nameKorean = '리플';
        nameTicker = 'XRP';
      default:
        nameKorean = '';
        nameTicker = '';
    }
  }
}
