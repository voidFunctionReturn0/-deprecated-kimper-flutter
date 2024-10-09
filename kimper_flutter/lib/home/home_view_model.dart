// import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimper_client/kimper_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// final homeViewModelProvider = ChangeNotifierProvider((ref) => HomeViewModel());

// class HomeViewModel with ChangeNotifier {
//   // TODO

//   List<KimchiPremium> get kimps => [];
// }

final homeViewModelProvider =
    StateNotifierProvider<HomeViewModel, KimchiPremium>((ref) {
  final viewModel = HomeViewModel();
  viewModel.startKimchiPremiumsStream();
  return viewModel;
});

class HomeViewModel extends StateNotifier<KimchiPremium> {
  HomeViewModel()
      : super(KimchiPremium(
            ticker: Ticker.xrp,
            koreaExchange: Exchange.bybit,
            koreaExchangePrice: 1.0,
            foreignExchange: Exchange.bybit,
            foreignExchangePrice: 2.0,
            kimchiPrimeum: 3.0));

  // TODO: Client를 전역적으로 관리
  var client = Client('http://$localhost:8080/');
  StreamSubscription<KimchiPremium>? _kimchiPremiumsSubscription;

  void startKimchiPremiumsStream() {
    _kimchiPremiumsSubscription = client.kimchiPremiumStream
        .streamkimchiPremiums()
        .listen((kimchiPremiums) {
      print('## listen $kimchiPremiums');
      state = kimchiPremiums;
    });
  }

  void stopKimchiPremiumsStream() {
    _kimchiPremiumsSubscription?.cancel();
  }

  @override
  void dispose() {
    stopKimchiPremiumsStream();
    super.dispose();
  }
}
