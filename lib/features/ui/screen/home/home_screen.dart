// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:your_pos/features/ui/widget/Navigation/sidebar_widget.dart';
import 'package:your_pos/features/ui/widget/Popup/barcode_popup.dart';
import 'package:your_pos/features/utils/app_color.dart';
import 'package:your_pos/features/utils/text_util.dart';
import 'package:your_pos/features/ui/screen/home/responsive/home_landscape.dart';
import 'package:your_pos/features/ui/screen/home/responsive/home_potrait.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextUtil.heading1("Hungry Killer", Colors.white),
          backgroundColor: AppColor.primaryColor,
          actions: [
            InkWell(
              onTap: () {
                BarcodePopup.show(context);
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: const Icon(
                  Icons.more_vert,
                ),
              ),
            ),
          ],
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        drawer: const SidebarWidget(),
        backgroundColor: AppColor.appBody,
        body: MediaQuery.of(context).orientation == Orientation.landscape
            ? const HomeLanscapeScreen()
            : const HomePortraitScreen());
  }
}
