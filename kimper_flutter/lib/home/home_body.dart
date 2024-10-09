import 'package:flutter/material.dart';
import 'package:kimper_flutter/home/home_kimchi_premium.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  // TODO: StyledWidget 적용
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 808),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            children: [
              HomeKimchiPremium(),
            ],
          ),
        ),
      ),
    );
  }
}
