import 'package:flutter/material.dart';

AppBar buildApBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: MediaQuery.of(context).size.height / 16,
    title: const Text(
      'Профиль',
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.exit_to_app_rounded,
          color: Colors.black54,
          size: 30,
        ),
      ),
      const SizedBox(
        width: 20,
      )
    ],
  );
}
