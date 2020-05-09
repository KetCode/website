import 'package:flutter/material.dart';
import 'package:inotech/views/home/home_content_mobile.dart';
import 'package:inotech/views/home/home_content_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';
//agrupamento das configurações da tela do celular e do desktop
class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
  }
}