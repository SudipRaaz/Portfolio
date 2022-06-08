import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/resposive/responsive_layout.dart';
import 'package:portfolio/screen/mobileBody.dart';

import 'desktopBody.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          desktopBody: DesktopBody(), mobileBody: MobilePage()),
    );
  }
}
