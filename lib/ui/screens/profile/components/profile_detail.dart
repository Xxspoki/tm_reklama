import 'package:flutter/material.dart';
import 'package:tm_reklama/constants.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({
    Key? key,
    required this.mSize,
  }) : super(key: key);

  final Size mSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          height: mSize.width / 2.4,
          width: mSize.width / 2.4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kTextSecondaryColor,
            ),
            child: const Center(
              child: Icon(
                Icons.person,
                color: kWhiteColor,
                size: 40,
              ),
            ),
          ),
        ),
        Stack(
          children: [
            Container(
              height: mSize.width / 2.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('spispokistm'),
                  Text(
                    "spispokistm@gmail.com",
                    style: TextStyle(color: kTextColor),
                  ),
                  Text(
                    '+993 65431365',
                    style: TextStyle(color: kTextColor),
                  ),
                  Text(
                    '28/12/1999',
                    style: TextStyle(color: kTextColor),
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                backgroundColor: kPrimaryLightColor,
                child: Icon(
                  Icons.edit,
                  size: 25,
                  color: Colors.amber,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
