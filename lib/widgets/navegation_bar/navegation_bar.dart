import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'navegation_bar_tablet_desktop.dart';
import 'navigation_bar_mobile.dart';
//agrupamento das configurações de tablet e celular
class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
      
    );
  }
}

