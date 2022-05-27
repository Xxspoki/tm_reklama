// ignore_for_file: prefer_typing_uninitialized_variables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingUrlElement extends StatefulWidget {
  const SettingUrlElement({Key? key, this.text, this.icon}) : super(key: key);

  final text;
  final icon;

  @override
  State<SettingUrlElement> createState() => _SettingUrlElementState();
}

class _SettingUrlElementState extends State<SettingUrlElement> {
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
    final mWidth = MediaQuery.of(context).size.width;
    final mHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => setState(() {
        _launched = _launchInWebViewOrVC(Uri(
            scheme: 'https',
            host: 'pub.dev',
            path: '/packages/url_launcher/example',
            fragment: 'numbers'));
      }),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        widget.icon,
                        color: Colors.amber,
                        size: 34,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.text,
                          style: const TextStyle(
                              color: Colors.black54, fontSize: 16)),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                maxRadius: 12,
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.navigate_next,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
