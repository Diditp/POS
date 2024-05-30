// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:your_pos/features/ui/widget/home/pos_menu_widget.dart';
import 'package:your_pos/features/ui/widget/home/pos_product_view_widget.dart';
import 'package:your_pos/features/ui/widget/home/pos_transaction.dart';
import 'package:your_pos/features/ui/widget/home/pos_transaction_action.dart';

class HomePortraitScreen extends StatefulWidget {
  const HomePortraitScreen({super.key});

  @override
  State<HomePortraitScreen> createState() => _HomePortraitScreenState();
}

class _HomePortraitScreenState extends State<HomePortraitScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  clipBehavior: Clip.hardEdge,
                  child: const Column(
                    children: [
                      PosMenuWidget(),
                      SizedBox(
                        height: 10.0,
                      ),
                      PosProductViewWidget(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  height: double.infinity,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 10,
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
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
                          child: const Column(
                            children: [
                              PosTransaction(),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const PosTransactionAction()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
