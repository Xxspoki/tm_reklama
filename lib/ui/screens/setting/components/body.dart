import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tm_reklama/ui/screens/setting/components/settings_contact_element.dart';
import 'package:tm_reklama/ui/screens/setting/components/settings_language_element.dart';
import 'package:tm_reklama/ui/screens/setting/components/settings_url_element.dart';
import 'package:tm_reklama/ui/screens/setting/components/settings_sliding_element.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height / 1.8,
        child: Column(
          children: [
            const Expanded(child: SettingLanguageElement()),
            const Expanded(
                child: SettingSlidingElement(
                    icon: Icons.security,
                    text: 'Пользовательское соглашение',
                    index: 0)),
            const Expanded(
                child: SettingUrlElement(
                    icon: Icons.business_rounded, text: 'Стать партнёром')),
            const Expanded(
                child: SettingContactElement(
                    icon: Icons.mark_chat_read_sharp, text: 'Обратня связь')),
            const Expanded(
                child: SettingSlidingElement(
                    icon: Icons.info, text: 'О нас', index: 1)),
            const Expanded(
                child: SettingUrlElement(
                    icon: Icons.menu_book_rounded, text: 'Инструкции')),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.phone_android,
                                color: Colors.amber, size: 36)),
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Версия',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16)))
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(Platform.version.substring(0, 7),
                            style: const TextStyle(
                                color: Colors.black54, fontSize: 16)))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
