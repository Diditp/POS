import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_pos/features/controllers/counter_controller.dart';
import 'package:your_pos/features/testing/testing.dart';
import 'package:your_pos/features/ui/screen/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Counter());
    return GetMaterialApp(
      title: 'Your POS',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/testing',
            page: () => const Testing(title: 'Home'),
            transition: Transition.fade),
      ],
    );
  }
}
