import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inotech/routing/route_names.dart';
import 'package:inotech/views/about/about_view.dart';
import 'package:inotech/views/contato/contacts_view.dart';
import 'package:inotech/views/home/home_view.dart';
import 'package:inotech/views/login/login_view.dart';
import 'package:inotech/views/videos/videos_view.dart';
//colocando o nome das paginas quando for navegar nelas aparecer na especificação ex: www.inotech/home
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) { //dar função aos nomes da aba/topo.
    case HomeRoute: 
      return _getPageRoute(HomeView(), settings);
    case ContactsRoute:
      return _getPageRoute(ContactsView(), settings);
    case AboutRoute:
      return _getPageRoute(AboutView(), settings);
    case VideosRoute:
      return _getPageRoute(VideosView(), settings);
    case LoginRoute:
      return _getPageRoute(LoginView(), settings);
    default:
      return _getPageRoute(HomeView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(
    child: child, routeName: settings.name
  );
}

//codigo de baixo vai dar um efeito para a troca de paginas na aba/topo.
class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}