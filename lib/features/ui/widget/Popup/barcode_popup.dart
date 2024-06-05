import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:your_pos/features/utils/text_util.dart';

class BarcodePopup {
  static void show(BuildContext context) {
    showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Scan/Find Barcode",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: const Color.fromRGBO(247, 248, 252, 1),
            actions: <Widget>[
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Material(
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: const Icon(
                              CupertinoIcons.barcode_viewfinder,
                              color: Color.fromRGBO(0, 71, 79, 1),
                              size: 65,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              offset: const Offset(0, 3),
                              spreadRadius: 1,
                              blurRadius: 5,
                            ),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            fit: BoxFit.contain,
                            child: TextUtil.heading3(
                                "Scan barcode to find the product ",
                                Colors.black),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(
                                width: 2,
                                color: const Color.fromRGBO(236, 236, 236, 1),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(CupertinoIcons.search),
                                ),
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical:
                                        10), //Change this value to custom as you like
                                isDense: true,
                                hintText: 'Search Product Barcode',
                                hintStyle: const TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          );
        });
  }
}
