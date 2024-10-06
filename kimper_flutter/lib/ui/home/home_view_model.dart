import 'package:flutter/material.dart';

// TODO
class HomeViewModel with ChangeNotifier {
  final delay = 5;
  String _upbitXrpPrice = '..';
  String _bybitXrpPrice = '..';
  String _exchangeRate = '..';
  String _kimchiPremium = '..';

  String get upbitXrpPrice => _upbitXrpPrice;
  String get bybitXrpPrice => _bybitXrpPrice;
  String get exchangeRate => _exchangeRate;
  String get kimchiPremium => _kimchiPremium;

  HomeViewModel() {
    _loadData();
  }

  void _loadData() {
    _loadUpbitXrpPrice();
    _loadBybitXrpPrice();
    _loadExchangeRate();
    _loadKimchiPremium();
  }

  void _loadUpbitXrpPrice() {}

  void _loadBybitXrpPrice() {}

  void _loadExchangeRate() {}

  void _loadKimchiPremium() {}
}
