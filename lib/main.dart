import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Project MIKTI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.lightBlue, useMaterial3: true),
      home: HomePage(),
    );
  }
}
