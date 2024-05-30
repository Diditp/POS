// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:your_pos/features/ui/widget/Popup/barcode_popup.dart';
import 'package:your_pos/features/util/app_color.dart';
import 'package:your_pos/features/util/text_util.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextUtil.heading1("Hungry Killer", Colors.white),
        centerTitle: true,
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
      backgroundColor: AppColor.appBody,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color.fromRGBO(0, 112, 192, 1),
              width: MediaQuery.of(context).size.width,
              child: Flex(
                direction: Axis.vertical,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                      child: Text(
                        'D',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Didit Ganteng',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: ResponsiveGridList(
                shrinkWrap: true,
                desiredItemWidth: MediaQuery.of(context).size.width * 0.4,
                minSpacing: 10,
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: const Offset(0, 3),
                          spreadRadius: 1,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:
                                  TextUtil.heading2("Hardware", Colors.black),
                            ),
                            const Divider(
                              thickness: 1,
                              height: 1,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtil.heading4("Add Printer", Colors.black),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Material(
                                  color: AppColor.settingButton,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Icon(
                                        CupertinoIcons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtil.heading4("EDC Machine", Colors.black),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Material(
                                  color: AppColor.settingButton,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Icon(
                                        CupertinoIcons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: const Offset(0, 3),
                          spreadRadius: 1,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextUtil.heading2("Shift", Colors.black),
                            ),
                            const Divider(
                              thickness: 1,
                              height: 1,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtil.heading4("Start Shift", Colors.black),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Material(
                                  color: AppColor.settingButton,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Icon(
                                        CupertinoIcons.arrow_right,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtil.heading4("End Shift", Colors.black),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Material(
                                  color: AppColor.settingButton,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Icon(
                                        CupertinoIcons.arrow_right,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtil.heading4("History Shift", Colors.black),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Material(
                                  color: AppColor.settingButton,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Icon(
                                        CupertinoIcons.arrow_right,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: const Offset(0, 3),
                          spreadRadius: 1,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextUtil.heading2("Shift", Colors.black),
                            ),
                            const Divider(
                              thickness: 1,
                              height: 1,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtil.heading4("Facing Display", Colors.black),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Material(
                                  color: AppColor.settingButton,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Icon(
                                        CupertinoIcons.arrow_right,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtil.heading4("Laci Kas", Colors.black),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Material(
                                  color: AppColor.settingButton,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Icon(
                                        CupertinoIcons.arrow_right,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: const Offset(0, 3),
                          spreadRadius: 1,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextUtil.heading2("Support", Colors.black),
                            ),
                            const Divider(
                              thickness: 1,
                              height: 1,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtil.heading4("Contact Us", Colors.black),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Material(
                                  color: AppColor.settingButton,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Icon(
                                        CupertinoIcons.arrow_right,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2),
                              child: Material(
                                color: Colors.red,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {},
                                      child: TextUtil.heading4(
                                          "Logout", Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
