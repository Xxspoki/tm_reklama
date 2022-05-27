// ignore_for_file: prefer_typing_uninitialized_variables, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tm_reklama/constants.dart';
import 'package:tm_reklama/ui/screens/home/components/animated_dot.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/link.dart';

final imagesList = [
  'assets/images/carusel_example.jpg',
  'assets/images/carusel_example.jpg',
  'assets/images/carusel_example.jpg',
  'assets/images/carusel_example.jpg',
];
final List<String> titles = [
  ' Coffee ',
  ' Bread  Bread  Bread ',
  ' Gelato ',
  ' Ice Cream  Ice Cream ',
];

class CustomCaruselAdd extends StatefulWidget {
  final caruselHeight;
  const CustomCaruselAdd({Key? key, this.caruselHeight}) : super(key: key);
  @override
  State<CustomCaruselAdd> createState() => _CustomCaruselAddState();
}

class _CustomCaruselAddState extends State<CustomCaruselAdd> {
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Future<void>? _launched;

  Future<void> _launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(
          headers: <String, String>{'my_header_key': 'my_header_value'}),
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height / widget.caruselHeight,
            autoPlay: true,
            // enlargeCenterPage: true,
            autoPlayAnimationDuration: kAnimationDuration * 3,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(
                () {
                  _currentIndex = index;
                },
              );
            },
          ),
          items: imagesList
              .map(
                (item) => GestureDetector(
                  onTap: () => setState(() {
                    _launched = _launchInWebViewOrVC(Uri(
                        scheme: 'https',
                        host: 'pub.dev',
                        path: '/packages/url_launcher/example',
                        fragment: 'numbers'));
                  }),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 12),
                    child: Card(
                      margin: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 10.0,
                      ),
                      elevation: 4.0,
                      shadowColor: kTextColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Image.asset(
                              item,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                titles[_currentIndex],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor: kBlackColor,
                                  color: kWhiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        SizedBox(
          height: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              titles.length,
              (index) => AnimatedDot(active: _currentIndex == index),
            ),
          ),
        ),
      ],
    );
  }
}
