import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:tm_reklama/core/providers/balance_provider.dart';

class Balance extends StatelessWidget {
  const Balance({
    Key? key,
    required this.mSize,
  }) : super(key: key);

  final Size mSize;

  @override
  Widget build(BuildContext context) {
    BalanceProvider providerInstance = context.watch<BalanceProvider>();

    return Container(
      color: const Color.fromARGB(255, 253, 245, 211),
      height: mSize.height / 12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: SvgPicture.asset(
                    'assets/icons/money.svg',
                    fit: BoxFit.fitHeight,
                    height: 35,
                    color: Colors.amber,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Баланс: ${providerInstance.balance.toStringAsPrecision(3)} TMT'),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      bottomLeft: Radius.circular(32)),
                  color: Colors.amber,
                ),
                child: const Center(
                  child: Text(
                    'Снять с счета',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
