import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimper_client/kimper_client.dart';
import 'package:kimper_flutter/home/home_ticker.dart';
import 'package:kimper_flutter/home/home_view_model.dart';
import 'package:kimper_flutter/models/kimchi_premium_flutter.dart';
import 'package:kimper_flutter/models/price_flutter.dart';
import 'package:kimper_flutter/styles/my_text_style.dart';
import 'package:kimper_flutter/widgets/space.dart';

class HomeKimchiPremium extends ConsumerWidget {
  const HomeKimchiPremium({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var kimchiPremiums = ref.watch(homeViewModelProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(children: [Text('김치 프리미엄', style: MyTextStyle.headlineMedium)]),
        Space(height: 20),
        // TODO: 행 많아지면 표를 CustomScrollView로 감싸기 or PagenatedDataTable 사용: https://api.flutter.dev/flutter/material/DataTable-class.html
        DataTable(
          columns: _columns(['코인', '김프', '업비트', '바이비트']),
          rows: _rows(kimchiPremiums),
          horizontalMargin: 0,
        ),
      ],
    );
  }
}

List<DataColumn> _columns(List<String> texts) {
  return texts
      .map(
        (text) => DataColumn(
          label: Expanded(
            child: Text(
              text,
              textAlign: TextAlign.start,
              style: text == '김프'
                  ? MyTextStyle.bodyMedium1.copyWith(color: Colors.red)
                  : MyTextStyle.bodyMedium1,
            ),
          ),
        ),
      )
      .toList();
}

List<DataRow> _rows(KimchiPremium kimchiPremium) {
  // TODO Kimp to List<Kimp>
  // return switch (kimchiPremiums.length) {
  //   0 => [],
  //   _ => kimchiPremiums
  //       .map((kimchiPremium) => DataRow(cells: [
  //             DataCell(Text(kimchiPremium.ticker.toString())),
  //             DataCell(Text(kimchiPremium.kimchiPrimeum.toString())),
  //             DataCell(Text(kimchiPremium.koreaExchangePrice.toString())),
  //             DataCell(Text(kimchiPremium.foreignExchangePrice.toString())),
  //           ]))
  //       .toList(),
  // };
  return [
    DataRow(cells: [
      DataCell(HomeTicker(kimchiPremium.ticker)),
      DataCell(Text(KimchiPremiumFlutter.toStr(kimchiPremium.kimchiPrimeum))),
      DataCell(Text(PriceFlutter.toStr(kimchiPremium.koreaExchangePrice))),
      DataCell(Text(PriceFlutter.toStr(kimchiPremium.foreignExchangePrice))),
    ])
  ];
}
