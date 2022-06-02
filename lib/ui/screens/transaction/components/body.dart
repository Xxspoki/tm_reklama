import 'package:flutter/material.dart';
import 'package:tm_reklama/ui/widgets/balance.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final mSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        // height: MediaQuery.of(context).size.height / 2.0,
        child: Column(
          children: [
            Balance(mSize: mSize),
            const Center(
              child: Text(
                'Пока ничего нового',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
