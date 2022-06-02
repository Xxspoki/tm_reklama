import 'package:flutter/material.dart';
import 'package:tm_reklama/ui/screens/profile/components/coupon.dart';
import 'package:tm_reklama/ui/screens/profile/components/custom_grid.dart';
import 'package:tm_reklama/ui/screens/profile/components/profile_detail.dart';
import 'package:tm_reklama/ui/widgets/balance.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final mSize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          const SizedBox(height: 20),
          ProfileDetail(mSize: mSize),
          const SizedBox(height: 20),
          const Coupon(),
          const SizedBox(height: 20),
          Balance(mSize: mSize),
          const SizedBox(height: 10),
          CustomGridBuilder(controller: _controller),
        ],
      ),
    );
  }
}
