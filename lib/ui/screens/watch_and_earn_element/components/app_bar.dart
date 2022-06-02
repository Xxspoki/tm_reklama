import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tm_reklama/constants.dart';
import 'package:tm_reklama/core/providers/balance_provider.dart';

AppBar buildApBar(BuildContext context) {
  BalanceProvider providerInstance = context.watch<BalanceProvider>();
  return AppBar(
    automaticallyImplyLeading: true,
    toolbarHeight: MediaQuery.of(context).size.height / 16,
    title: const Text(
      'Посмотри и заработай',
    ),
    actions: [
      Center(
        child: Text(
          providerInstance.balance.toStringAsPrecision(3),
          style: const TextStyle(color: kBlueGreyColor, fontSize: 20),
        ),
      ),
      const SizedBox(width: 20),
    ],
  );
}
