import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:whatsupuiclone/cosnts/colors.dart';
import 'package:whatsupuiclone/responsive/responsive_layout.dart';
import 'package:whatsupuiclone/view/mobileScreen/mobile_screen_layout.dart';
import 'package:whatsupuiclone/view/webScreen/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home:   ResponsiveLayout(mobileScreen: const MobileLayout(), webScreen: WebLayout(),),
    );
  }
}


