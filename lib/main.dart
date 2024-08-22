import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_pos/features/controllers/counter_controller.dart';
import 'package:your_pos/features/testing/printer/print.dart';

void main() {
  if (Platform.isAndroid) {
    debugPrint("ANDROID");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Counter());
    return MaterialApp(
      title: 'Your POS',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Print(),
    );
  }
}
