import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: Routes.STATE_MIXIN_DEMO,
      getPages: AppPages.routes,
      theme: ThemeData(
        canvasColor: Colors.white,
      ),
    ),
  );
}
