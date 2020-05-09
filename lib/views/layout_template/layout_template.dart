import 'package:flutter/material.dart';
import 'package:inotech/lacator.dart';
import 'package:inotech/routing/route_names.dart';
import 'package:inotech/routing/router.dart';
import 'package:inotech/services/navigation_service.dart';
import 'package:inotech/widgets/centered_view/centered_view.dart';
import 'package:inotech/widgets/navegation_bar/navegation_bar.dart';
import 'package:inotech/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';
//codigo para quando abrir a pagina ele vai buscar pagina inicial para abrir, vai definir qual tela vai aparecer ao abrir o site
class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ))],
          ),
        ),
      ),
    );
  }
}