import 'package:digitallibrary/app/modules/home/views/home_view.dart';
import 'package:digitallibrary/app/modules/utils/color.dart';
import 'package:digitallibrary/app/modules/utils/menuDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        controller: drawerController,
        style: DrawerStyle.style1,
        borderRadius: 24.0,
        showShadow: true,angle: 2.0,
        menuBackgroundColor: colorgrey,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
        menuScreen: const MenuScreen(),
        mainScreen: HomeView());
  }
}
