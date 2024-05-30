// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:your_pos/features/util/app_color.dart';
import 'package:your_pos/features/util/text_util.dart';
import 'package:responsive_grid/responsive_grid.dart';

class PosProductViewWidget extends StatelessWidget {
  const PosProductViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      {
        "id": 1,
        "photo":
            "https://i.ibb.co/dG68KJM/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
        "product_name": "Roti Bundar Bali",
        "price": 25000,
        "category": "Makanan",
        "description":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      },
      {
        "id": 2,
        "photo":
            "https://i.ibb.co/mHtmhmP/photo-1521305916504-4a1121188589-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
        "product_name": "Krabby Patty Babi",
        "price": 22000,
        "category": "Makanan",
        "description":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      },
      {
        "id": 3,
        "photo":
            "https://images.unsplash.com/photo-1625869016774-3a92be2ae2cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        "product_name": "Arak Bali",
        "price": 33000,
        "category": "Minuman",
        "description":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      },
      {
        "id": 4,
        "photo":
            "https://images.unsplash.com/photo-1578160112054-954a67602b88?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
        "product_name": "Nasi Goreng Babi",
        "price": 31000,
        "category": "Makanan",
        "description":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      },
      {
        "id": 5,
        "photo":
            "https://i.ibb.co/mHCx9Nj/photo-1517487881594-2787fef5ebf7-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
        "product_name": "Susu Sapi Tabanan",
        "price": 32000,
        "category": "Minuman",
        "description":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      },
      {
        "id": 6,
        "photo":
            "https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
        "product_name": "Ayam Kentuky Bali",
        "price": 49000,
        "category": "Makanan",
        "description":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      },
    ];
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
        child: ResponsiveGridList(
          desiredItemWidth: 100,
          minSpacing: 5,
          children: items.map((item) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.20,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: const Offset(0, 3),
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            item["photo"],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextUtil.headingCard1(
                            item["product_name"], Colors.white),
                        const SizedBox(
                          height: 4.0,
                        ),
                        TextUtil.headingCard2(item["category"], Colors.white),
                        const SizedBox(
                          height: 4.0,
                        ),
                        TextUtil.headingCard2(
                            "Rp. ${item["price"]}", Colors.white),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
