// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:tm_reklama/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key, this.prefixicon, this.labeltext, this.height, this.maxlenth})
      : super(key: key);

  final prefixicon;
  final labeltext;
  final maxlenth;
  var height;
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      maxLength: maxlenth,
      cursorColor: kBlueGreyColor,
      cursorHeight: 20,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(0),
        prefixIcon: Icon(prefixicon, color: kTextColor),
        suffixIcon: GestureDetector(
            onTap: _controller.clear,
            child: const Icon(Icons.clear, color: kTextColor)),
        labelStyle: const TextStyle(color: kTextColor, fontSize: 18),
        labelText: 'Search',
        filled: true,
        fillColor: kWhiteColor,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
              color: kBlueGreyColor, style: BorderStyle.solid, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
              color: kBlueGreyColor, style: BorderStyle.solid, width: 2),
        ),
      ),
    );
  }
}
