import 'package:flutter/material.dart';
import 'package:inotech/routing/route_names.dart';
import 'package:inotech/widgets/navbar_item/navbar_item.dart';

import 'package:inotech/widgets/navigation_drawer/navigation_drawer_head.dart';
//onde fica os icones, posso modifcalos utilizando o icons.(nome do icone que quero colocar)
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          NavBarItem('Início', HomeRoute, icon: Icons.home),
          NavBarItem('Login', LoginRoute, icon: Icons.person),
          NavBarItem('Sobre', AboutRoute, icon: Icons.info_outline), //mostra o icone
          NavBarItem('Contato', ContactsRoute, icon: Icons.contact_mail), //mostra o icone
        ],
      ),
    );
  }
}