import 'package:flutter/material.dart';

class SettingLanguageElement extends StatefulWidget {
  const SettingLanguageElement({Key? key}) : super(key: key);

  @override
  State<SettingLanguageElement> createState() => _SettingLanguageElementState();
}

class _SettingLanguageElementState extends State<SettingLanguageElement> {
  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => {_groupValue = value!});
  }

  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: mWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.language,
                  color: Colors.amber,
                  size: 36,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Язык',
                    style: TextStyle(color: Colors.black54, fontSize: 16)),
              )
            ],
          ),
          TextButton(
            child: Row(
              children: const [
                Text(
                  'Русский язык',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black54,
                ),
              ],
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
