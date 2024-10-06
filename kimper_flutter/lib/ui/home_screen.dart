import 'package:flutter/material.dart';
import 'package:kimper_client/kimper_client.dart';
import 'package:kimper_flutter/models/app_ticker.dart';
import 'package:kimper_flutter/models/exchange_rate.dart';
import 'package:kimper_flutter/models/kimchi_premium.dart';
import 'package:kimper_flutter/models/price.dart';
import 'package:kimper_flutter/repo.dart';
import 'package:kimper_flutter/styles/app_color.dart';
import 'package:kimper_flutter/styles/app_text_style.dart';
import 'package:kimper_flutter/styles/app_widget.dart';

// TODO: 데이터를 서버에서 불러오고, 서버-클라이언트 스트림 통신 필요
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

class _Body extends StatefulWidget {
  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final _delay = 5;
  Price? _upbitXrpPrice;
  Price? _bybitXrpPrice;
  ExchangeRate? _exchangeRate;
  KimchiPremium? _kimchiPremium;

  @override
  void initState() {
    // _loadUpbitXrpPrice();
    _loadBybitXrpPrice();
    super.initState();
  }

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
                [
                  _tickerName(AppTicker(Ticker.xrp)),
                  Text(_kimchiPremium?.toString() ?? '..',
                      style: AppTextStyle.bodyMedium2),
                  Text(_upbitXrpPrice?.toString() ?? '..',
                      style: AppTextStyle.bodyMedium2),
                  Text(_bybitXrpPrice?.toString() ?? '..',
                      style: AppTextStyle.bodyMedium2),
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
      crossAxisAlignment: CrossAxisAlignment.center,
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

  Future<void> _loadUpbitXrpPrice() async {
    Map responseBody = await Repo.get(
      Uri.parse('https://api.upbit.com/v1/ticker?markets=KRW-XRP'),
    );
    setState(() {
      _upbitXrpPrice = Price(responseBody['trade_price']);
    });
  }

  Future<void> _loadBybitXrpPrice() async {
    Map responseBody = await Repo.get(
      Uri.parse(
          'https://api.bybit.com/spot/v3/public/quote/ticker/price?symbol=XRPUSDT'),
    );
    setState(() {
      _bybitXrpPrice = Price(responseBody['result']['price']);
    });
  }
}
