import 'package:flutter/material.dart';
import 'package:kimper_flutter/home/home_body.dart';
import 'package:kimper_flutter/styles/my_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MyColor.black1),
      body: HomeBody(),
    );
  }
}
