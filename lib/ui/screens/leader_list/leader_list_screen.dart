import 'package:flutter/material.dart';
import 'package:tm_reklama/ui/screens/leader_list/components/app_bar.dart';
import 'package:tm_reklama/ui/screens/leader_list/components/body.dart';

class LeaderListScreen extends StatelessWidget {
  const LeaderListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApBar(context),
      body: const Body(),
    );
  }
}
