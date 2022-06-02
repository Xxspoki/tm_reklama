import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tm_reklama/ui/screens/home/components/app_bar.dart';
import 'package:tm_reklama/ui/screens/home/components/body.dart';
import 'package:tm_reklama/ui/screens/profile/profile_screen.dart';
import 'package:tm_reklama/ui/screens/setting/setting_screen.dart';
import 'package:tm_reklama/ui/screens/transaction/transaction_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApBar(context),
      body: const Body(),
    );
  }
}
