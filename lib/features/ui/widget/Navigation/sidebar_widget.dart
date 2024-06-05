// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:your_pos/features/ui/screen/home/home_screen.dart';
import 'package:your_pos/features/ui/screen/setting/setting_screen.dart';
import 'package:your_pos/features/ui/screen/under_consturction/under_construction.dart';
import 'package:your_pos/features/utils/text_util.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).orientation == Orientation.landscape
          ? MediaQuery.of(context).size.width * 0.2
          : MediaQuery.of(context).size.width * 0.7,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: TextUtil.heading4("Didit Ganteng", Colors.white),
            accountEmail:
                TextUtil.heading4("DiditGanteng9@Yours.com", Colors.white),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1600486913747-55e5470d6f40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
            ),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 112, 192, 1),
            ),
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.archivebox),
            title: TextUtil.heading4("Point of Sales", Colors.black),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) => const HomeScreen()));
            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.clock),
            title: TextUtil.heading4("History", Colors.black),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const UnderConstructionScreen()));
            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.bag),
            title: TextUtil.heading4("Inventory", Colors.black),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const UnderConstructionScreen()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.grey.shade700,
            ),
            title: TextUtil.heading4("Setting", Colors.black),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SettingScreen()));
            },
          ),
        ],
      ),
    );
  }
}
