import 'package:flutter/material.dart';
import 'package:tm_reklama/ui/screens/transaction/components/app_bar.dart';
import 'package:tm_reklama/ui/screens/transaction/components/body.dart';

class TransactonScreen extends StatefulWidget {
  const TransactonScreen({Key? key}) : super(key: key);

  @override
  State<TransactonScreen> createState() => _TransactonScreenState();
}

class _TransactonScreenState extends State<TransactonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApBar(context),
      body: const Body(),
    );
  }
}
