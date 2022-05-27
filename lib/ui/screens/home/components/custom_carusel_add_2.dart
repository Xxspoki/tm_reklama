import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tm_reklama/constants.dart';
import 'package:tm_reklama/ui/screens/home/components/animated_dot.dart';
import 'package:url_launcher/url_launcher.dart';

final List<String> imagesList = [
  'assets/images/carusel_example.jpg',
  'assets/images/carusel_example.jpg',
  'assets/images/carusel_example.jpg',
  'assets/images/carusel_example.jpg',
];

final List<String> titles = [
  'Этот день мы приближали как\nмогли1',
  'Этот день мы приближали как\nмогли2',
  'Этот день мы приближали как\nмогли3',
  'Этот день мы приближали как\nмогли4',
];

final List<String> titles2 = [
  'Источник: orient0',
  'Источник: orient1',
  'Источник: orient2',
  'Источник: orient3',
];

class CustomCaruselAdd2 extends StatefulWidget {
  const CustomCaruselAdd2({Key? key}) : super(key: key);

  @override
  State<CustomCaruselAdd2> createState() => _CustomCaruselAdd2State();
}

class _CustomCaruselAdd2State extends State<CustomCaruselAdd2> {
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
            height: MediaQuery.of(context).size.width / 3.6,
            autoPlayInterval: const Duration(seconds: 8),
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 600),
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
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        child: ColoredBox(
                          color: kTextSecondaryColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  child: Image.asset(
                                    item,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      titles[_currentIndex],
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      titles2[_currentIndex],
                                      style: const TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.normal,
                                        color: Color.fromARGB(255, 88, 88, 88),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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
