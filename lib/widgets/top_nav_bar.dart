import 'package:flutter/material.dart';
import 'package:flutter_dashboard/helpers/responsive.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !Responsive.isSmallScreen(context) ?
      Row() : IconButton(icon: const Icon(Icons.menu), onPressed: () {
        key.currentState?.openDrawer();
      },),
      elevation: 0,
      backgroundColor: Colors.white,
    );