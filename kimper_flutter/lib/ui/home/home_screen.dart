import 'package:flutter/material.dart';
import 'package:kimper_flutter/styles/app_color.dart';
import 'package:kimper_flutter/styles/app_text_style.dart';

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
              _kimp()
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
        SizedBox(
          height: 20,
        ),
        Table(
          children: [
            TableRow(
              children: _columnTitles(['코인', '김프', '업비트', '바이비트']),
            ),
            TableRow(
              children: _xrp(),
            ),
          ],
        ),
      ],
    );
  }

  List<Widget> _columnTitles(List<String> titles) {
    return titles
        .map((title) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              child: TableCell(
                child: Text(
                  title,
                  style: AppTextStyle.bodyMedium,
                ),
              ),
            ))
        .toList();
  }

  List<Widget> _xrp() {
    return [
      TableCell(
        child: Text('XRP'),
      ),
      TableCell(
        child: Text('1%'),
      ),
      TableCell(
        child: Text('333원'),
      ),
      TableCell(
        child: Text('332원'),
      ),
    ];
  }
}
