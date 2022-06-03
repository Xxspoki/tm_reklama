// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:tm_reklama/constants.dart';
import 'package:tm_reklama/ui/screens/contact/components/app_bar.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApBar(context),
      body: Container(
        color: kWhiteColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              CustomTextField(
                  prefixicon: Icons.email, labeltext: 'Отправитель', height: 1),
              const SizedBox(height: 40),
              CustomTextField(
                  prefixicon: Icons.edit_note_rounded,
                  labeltext: 'Тема',
                  height: 1),
              const SizedBox(height: 40),
              CustomTextField(
                  prefixicon: Icons.list_rounded,
                  labeltext: 'Содержание',
                  maxlenth: 40),
              const SizedBox(height: 40),
              Center(
                  child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.send, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Отправить',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    this.prefixicon,
    this.labeltext,
    this.height,
    this.maxlenth,
  }) : super(key: key);

  final prefixicon;
  final labeltext;
  final maxlenth;
  var height;

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: TextInputAction.go,
      maxLength: maxlenth,
      maxLines: height,
      cursorColor: Colors.black54,
      decoration: InputDecoration(
          filled: true,
          prefixIcon: Icon(prefixicon, color: Colors.grey[600]),
          suffixIcon: GestureDetector(
            child: const Icon(Icons.close, color: kBlackColor),
            onTap: () {
              controller.clear();
              FocusScope.of(context).requestFocus(FocusNode());
            },
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
                color: Colors.white, style: BorderStyle.solid, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
                color: Colors.white, style: BorderStyle.solid, width: 2),
          ),
          labelText: labeltext,
          alignLabelWithHint: true,
          labelStyle: const TextStyle(color: Colors.black54, fontSize: 18)),
    );
  }
}
