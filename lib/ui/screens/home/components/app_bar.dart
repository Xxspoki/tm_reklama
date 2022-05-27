import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tm_reklama/constants.dart';
import 'package:tm_reklama/core/providers/balance_provider.dart';

AppBar buildApBar(BuildContext context) {
  BalanceProvider providerInstance = context.watch<BalanceProvider>();

  return AppBar(
    toolbarHeight: MediaQuery.of(context).size.height / 12,
    automaticallyImplyLeading: false,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              'Turkmen Reklama',
            ),
          ],
        ),
        Text(providerInstance.balance.toStringAsPrecision(3)),
      ],
    ),
  );
}
