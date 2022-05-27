import 'package:flutter/material.dart';
import 'package:tm_reklama/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kDeafaultPadding * 2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kTextSecondaryColor.withOpacity(0.2),
        ),
        child: ListView.builder(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            itemCount: 40,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('# ${index + 1}.'),
                    const SizedBox(width: 4),
                    const CircleAvatar(
                      backgroundColor: kTextSecondaryColor,
                      child: Icon(
                        Icons.person,
                        color: kWhiteColor,
                      ),
                    ),
                  ],
                ),
                title: Text("Selim Selimow ${index + 1}"),
              );
            }),
      ),
    );
  }
}
