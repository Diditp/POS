// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_pos/features/utils/app_color.dart';
import 'package:your_pos/features/utils/text_util.dart';

class PosTransactionAction extends StatelessWidget {
  const PosTransactionAction({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: Material(
                color: AppColor.alertColor,
                child: InkWell(
                  onTap: () {
                    Get.snackbar(
                      "Success", // judul
                      "Your Transaction has been deleted", // pesan
                      backgroundColor: Colors.white,
                      boxShadows: [
                        BoxShadow(
                            color: Colors.grey.shade400,
                            offset: const Offset(0, 0),
                            spreadRadius: 0,
                            blurRadius: 1),
                      ],
                      icon: const Icon(
                        Icons.check,
                        size: 30,
                        color: Colors.green,
                      ),
                      shouldIconPulse: true,
                      isDismissible: true,
                      duration: const Duration(seconds: 3),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(2)),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        const Icon(
                          CupertinoIcons.delete,
                          color: Colors.white,
                        ),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: TextUtil.heading4("Delete", Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: Material(
                color: AppColor.secondaryColor,
                child: InkWell(
                  onTap: () {
                    Get.bottomSheet(
                      Container(
                        height: 500,
                        padding: const EdgeInsets.all(8),
                        color: Colors.amber,
                        child: Column(
                          children: [
                            Container(
                              color: Colors.blue,
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "text",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  Text(
                                    "text",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(2)),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        const Icon(
                          CupertinoIcons.clock,
                          color: Colors.white,
                        ),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: TextUtil.heading4(" Pending", Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: Material(
                color: AppColor.settingButton,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(2)),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        const Icon(
                          CupertinoIcons.money_dollar,
                          color: Colors.white,
                        ),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: TextUtil.heading4("Chekcout", Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
