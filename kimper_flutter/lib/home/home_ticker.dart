import 'package:flutter/material.dart';
import 'package:kimper_client/kimper_client.dart';
import 'package:kimper_flutter/models/ticker_flutter.dart';
import 'package:kimper_flutter/styles/my_color.dart';
import 'package:kimper_flutter/styles/my_text_style.dart';
import 'package:kimper_flutter/widgets/circle.dart';
import 'package:kimper_flutter/widgets/space.dart';

class HomeTicker extends StatelessWidget {
  final Ticker ticker;

  const HomeTicker(this.ticker, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          TickerFlutter.name(ticker),
          style: MyTextStyle.bodyMedium2,
        ),
        Space(width: 8),
        Circle(size: 4, color: MyColor.gray1),
        Space(width: 8),
        Text(
          TickerFlutter.korean(ticker),
          style: MyTextStyle.bodySmall1,
        ),
      ],
    );
  }
}
