// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:tm_reklama/constants.dart';
import 'package:tm_reklama/ui/screens/find_and_earn/components/app_bar.dart';
import 'package:tm_reklama/ui/screens/find_and_earn/components/custom_text_field.dart';
import 'package:tm_reklama/ui/screens/find_and_earn/components/sliver_app_bar_delegate.dart';

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

class FindAndEarnScreen extends StatelessWidget {
  const FindAndEarnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApBar(context),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomScrollView(
          slivers: [
            // const CupertinoSliverNavigationBar(
            //   largeTitle: Text('Search'),
            // ),
            //CupertinoSliverRefreshControl(),
            SliverPersistentHeader(
              pinned: false,
              floating: true,
              delegate: SliverAppBarDelegate(
                minHeight: 50.0,
                maxHeight: 50.0,
                child: CustomTextField(
                  prefixicon: Icons.search,
                  height: 50,
                  labeltext: 'Search',
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                List.generate(
                  20,
                  (index) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: MediaQuery.of(context).size.height / 10,
                    child: Card(
                      color: kWhiteColor,
                      elevation: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Orient - информационная агенство'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: kBlueColor,
                              foregroundColor: kWhiteColor,
                              child: Icon(Icons.search),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
