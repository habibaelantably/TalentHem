import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tapri/controllers/auth_controller.dart';

class DrawerLayout extends StatefulWidget {
  const DrawerLayout({super.key});

  @override
  State<DrawerLayout> createState() => _DrawerLayoutState();
}

class _DrawerLayoutState extends State<DrawerLayout> {
  final authController = Get.find<AuthenticationController>();
  @override
  void initState() {
    super.initState();
    print(authController.user.toJson().toString());
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Obx(
            () => UserAccountsDrawerHeader(
              accountName: Text(
                authController.user.value.fullName.toString(),
                style: const TextStyle(color: Colors.white),
              ),
              accountEmail: Text(
                authController.user.value.email.toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            title: Text("city".tr),
            onTap: () {
              Get.toNamed('/cityTable');
            },
          ),
          ListTile(
            title: Text("market".tr),
            onTap: () {
              Get.toNamed('/marketTable');
            },
          ),
          ListTile(
            title: Text("tapri".tr),
            onTap: () {
              Get.toNamed('/tapriTable');
            },
          ),
          ListTile(
            title: Text("item".tr),
            onTap: () {
              Get.toNamed('/itemTable');
            },
          ),
          ListTile(
            title: Text("customer".tr),
            onTap: () {
              Get.toNamed('/customerTable');
            },
          ),
          ListTile(
            title: Text("order".tr),
            onTap: () {
              Get.toNamed('/orderTable');
            },
          ),
          ListTile(
            title: Text("invoice".tr),
            onTap: () {
              Get.toNamed('/invoiceTable');
            },
          ),
        ],
      ),
    );
  }
}
