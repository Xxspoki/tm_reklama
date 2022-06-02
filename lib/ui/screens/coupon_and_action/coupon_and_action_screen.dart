import 'package:flutter/material.dart';
import 'package:tm_reklama/ui/screens/coupon_and_action/components/app_bar.dart';
import 'package:tm_reklama/ui/screens/coupon_and_action/components/body.dart';

class CouponAndActionScreen extends StatelessWidget {
  const CouponAndActionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApBar(context),
      body: const Body(),
    );
  }
}
