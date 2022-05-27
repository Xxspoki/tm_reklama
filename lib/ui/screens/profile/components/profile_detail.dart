import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({
    Key? key,
    required this.mHeight,
  }) : super(key: key);

  final double mHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            height: mHeight + 25,
            width: mHeight + 30,
            child: Stack(
              children: [
                Container(
                  height: mHeight - 10,
                  width: mHeight - 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                const Positioned(
                  top: 100,
                  left: 100,
                  child: CircleAvatar(
                    backgroundColor: Colors.amber,
                    maxRadius: 24,
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: SizedBox(
            // color: Colors.greenAccent,
            height: mHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('spispokistm'),
                const Text(
                  "spispokistm@gmail.com",
                  style: TextStyle(color: Colors.black54),
                ),
                const Text(
                  '+993 65431365',
                  style: TextStyle(color: Colors.black54),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '28/12/1999',
                      style: TextStyle(color: Colors.black54),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: Icon(
                        Icons.edit,
                        size: 25,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
