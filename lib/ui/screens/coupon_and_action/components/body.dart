import 'package:flutter/material.dart';
import 'package:tm_reklama/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: const [
          CouponNavigationBar(),
          Center(
            child: Text('Nothing Much'),
          ),
        ],
      ),
    );
  }
}

class CouponNavigationBar extends StatelessWidget {
  const CouponNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child:
                    const Text('Купоны', style: TextStyle(color: kBlackColor)),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(kTextSecondaryColor),
                ),
              ),
            ),
            const CustomDivider(),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Акции', style: TextStyle(color: kTextColor)),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(kTextSecondaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 40,
      width: 3,
    );
  }
}
