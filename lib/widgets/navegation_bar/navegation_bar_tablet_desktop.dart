import 'package:flutter/material.dart';
import 'package:inotech/routing/route_names.dart';
import 'package:inotech/services/auth_service.dart';
import 'package:inotech/services/navigation_service.dart';
import 'package:inotech/widgets/call_to_action/call_to_action.dart';
import 'package:inotech/widgets/navbar_item/navbar_item.dart';

import '../../lacator.dart';
import 'navbar_logo.dart';
//Local onde se pode trocar os nomes que fica na aba/Topo.
class NavigationBarTabletDesktop extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Início', HomeRoute), // os nomes da barra de cima (se modificar modifica no frontend)
              SizedBox(width: 60,),
              NavBarItem('Sobre', AboutRoute), // aqui
              SizedBox(width: 60,),
              NavBarItem('Fale Conosco/Contato', ContactsRoute),
              SizedBox(width: 30,), // Ajustar para 60 quando decidir o nome "contato ou fale conosco"
              // GestureDetector(onTap: (){locator<NavigationService>().navigateTo(LoginRoute);}, child: CallToAction('Login'),), // Utilizei o gesture detector junto com a função de navegação pelo route e ainda coloquei a box personalizada.
              FlatButton.icon(onPressed: ()
              async { await _auth.signOut();}, 
              icon: Icon(Icons.power_settings_new), label: Text('Desconectar', style: TextStyle(fontSize: 19))),
            ],
          )
        ],
      ),
    );
  }
}