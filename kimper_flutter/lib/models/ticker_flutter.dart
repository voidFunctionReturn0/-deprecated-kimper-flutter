import 'package:kimper_client/kimper_client.dart';

class TickerFlutter {
  static String name(Ticker ticker) {
    return switch (ticker) { Ticker.xrp => 'TICKER' };
  }

  static String korean(Ticker ticker) {
    return switch (ticker) { Ticker.xrp => '리플' };
  }
}
