import 'package:flutter/material.dart';
import 'package:tm_reklama/ui/screens/home/components/app_bar.dart';
import 'package:tm_reklama/ui/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApBar(context),
      body: const Body(),
    );
  }
}
