// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:your_pos/features/utils/app_color.dart';
import 'package:your_pos/features/utils/text_util.dart';

class PosTransaction extends StatelessWidget {
  const PosTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(243, 245, 248, 1),
          borderRadius: BorderRadius.circular(2)),
      child: Wrap(
        runSpacing: 10,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.person_alt_circle,
                color: Colors.grey.shade400,
              ),
              const SizedBox(
                width: 5.0,
              ),
              TextUtil.heading4("Didit Ganteng", Colors.black),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: Material(
              color: AppColor.primaryColor,
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        CupertinoIcons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                      TextUtil.heading4("Add Customer", Colors.white),
                    ],
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
