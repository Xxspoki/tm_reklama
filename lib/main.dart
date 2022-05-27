import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:tm_reklama/core/providers/index.dart';
import 'package:tm_reklama/app.dart';

void main() async {
  await GetStorage.init();
  runApp(
    MultiProvider(
      providers: providers,
      child: const TmReklama(),
    ),
  );
}
