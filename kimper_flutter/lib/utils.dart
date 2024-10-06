import 'package:flutter/material.dart';
import 'package:kimper_client/kimper_client.dart';

class Utils {
  static String toStr(Ticker ticker) {
    return switch (ticker) { Ticker.xrp => "XRP" };
  }
}

class Space extends SizedBox {
  const Space({super.key, super.width, super.height});
}
