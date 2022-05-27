// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable
import 'package:flutter/material.dart';
import 'package:tm_reklama/constants.dart';
import 'package:tm_reklama/ui/screens/watch_and_earn/components/app_bar.dart';
import 'package:tm_reklama/ui/screens/watch_and_earn/components/custom_text_field.dart';
import 'package:tm_reklama/ui/screens/watch_and_earn/components/sliver_app_bar_delegate.dart';
import 'package:tm_reklama/ui/screens/watch_and_earn_element/watch_and_earn_element_screen.dart';

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

class WatchAndEarnScreen extends StatelessWidget {
  WatchAndEarnScreen({Key? key}) : super(key: key);

  final scrollController = ScrollController();
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
                  (index) => GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => const WatchAndEarnElement(),
                        transitionsBuilder: (c, anim, a2, child) =>
                            FadeTransition(opacity: anim, child: child),
                        transitionDuration: kAnimationDuration,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: MediaQuery.of(context).size.height / 10,
                      child: Card(
                        elevation: 1,
                        color: kWhiteColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Tehnika dunyasi'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: kPrimaryColor,
                                foregroundColor: kWhiteColor,
                                child: Icon(Icons.play_arrow),
                              ),
                            ),
                          ],
                        ),
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
