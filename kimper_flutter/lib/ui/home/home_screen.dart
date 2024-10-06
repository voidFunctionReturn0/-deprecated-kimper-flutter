import 'package:flutter/material.dart';
import 'package:kimper_client/kimper_client.dart';
import 'package:kimper_flutter/models/app_ticker.dart';
import 'package:kimper_flutter/styles/app_color.dart';
import 'package:kimper_flutter/styles/app_text_style.dart';
import 'package:kimper_flutter/common.dart';
import 'package:provider/provider.dart';

import 'home_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.black1,
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  late final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    // viewModel = Provider.of<HomeViewModel>(context);

    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 808),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            children: [
              _kimp(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _kimp() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '김치 프리미엄',
              style: AppTextStyle.headlineMedium,
            ),
          ],
        ),
        Space(
          height: 20,
        ),
        Table(
          children: [
            TableRow(
              children: _columnTitles(['코인', '김프', '업비트', '바이비트']),
            ),
            TableRow(
              children: _tableRow(
                // [
                //   Utils.toStr(Ticker.xrp),
                //   KimchiPremium(
                //     Ticker.xrp,
                //     Exchange.upbit,
                //     Exchange.bybit,
                //     _exchangeRate(Exchange.upbit, Exchange.bybit),
                //   ).toStr(),
                //   Price(
                //     Ticker.xrp,
                //     Exchange.upbit,
                //   ).toStr(Currency.krw),
                //   Price(
                //     Ticker.xrp,
                //     Exchange.bybit,
                //   ).toStr(Currency.krw),
                // ],
                [
                  _tickerName(AppTicker(Ticker.xrp)),
                  // viewModel.kimchiPremium,
                  // viewModel.upbitXrpPrice,
                  // viewModel.bybitXrpPrice,
                  Text('1.23%', style: AppTextStyle.bodyMedium2),
                  Text('301원', style: AppTextStyle.bodyMedium2),
                  Text('302원', style: AppTextStyle.bodyMedium2),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  List<Widget> _columnTitles(List<String> titles) {
    return titles
        .map(
          (title) => TableCell(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Text(
                title,
                style: (title == '김프')
                    ? AppTextStyle.bodyMedium1.copyWith(color: Colors.red)
                    : AppTextStyle.bodyMedium1,
              ),
            ),
          ),
        )
        .toList();
  }

  List<Widget> _tableRow(List<Widget> contents) {
    return contents
        .map(
          (content) => TableCell(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: content,
            ),
          ),
        )
        .toList();
  }

  Widget _tickerName(AppTicker ticker) {
    return Row(
      children: [
        Text(
          ticker.nameTicker,
          style: AppTextStyle.bodyMedium2,
        ),
        Space(width: 8),
        Circle.build(size: 4, color: AppColor.gray1),
        Space(width: 8),
        Text(
          ticker.nameKorean,
          style: AppTextStyle.bodySmall1,
        ),
      ],
    );
  }
}
