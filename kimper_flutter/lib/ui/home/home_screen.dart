import 'package:flutter/material.dart';
import 'package:kimper_client/kimper_client.dart';
import 'package:kimper_flutter/models/kimchi_premium.dart';
import 'package:kimper_flutter/models/price.dart';
import 'package:kimper_flutter/styles/app_color.dart';
import 'package:kimper_flutter/styles/app_text_style.dart';
import 'package:kimper_flutter/utils.dart';

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
  const _Body();

  @override
  Widget build(BuildContext context) {
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
                  ['리플', '1.23%', '300원', '301원']),
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

  List<Widget> _tableRow(List<String> contents) {
    return contents
        .map(
          (content) => TableCell(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Text(
                content,
                style: AppTextStyle.bodyMedium2,
              ),
            ),
          ),
        )
        .toList();
  }

  double _exchangeRate(Exchange upbit, Exchange bybit) {
    // TODO
    return 1.0;
  }
}
