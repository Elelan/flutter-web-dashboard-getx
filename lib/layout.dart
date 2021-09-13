import 'package:flutter/material.dart';

import './widgets/large_screen.dart';
import './widgets/small_screen.dart';
import 'helpers/responsive.dart';
import 'widgets/top_nav_bar.dart';

class SiteLayout extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      body: const Responsive(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
