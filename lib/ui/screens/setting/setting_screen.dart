import 'package:flutter/material.dart';
import 'package:tm_reklama/ui/screens/setting/components/app_bar.dart';
import 'package:tm_reklama/ui/screens/setting/components/body.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApBar(context),
      body: const Body(),
    );
  }
}
