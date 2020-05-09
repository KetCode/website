import 'package:flutter/material.dart';
import 'package:inotech/constants/app_colors.dart';
import 'package:inotech/widgets/navegation_bar/navbar_logo.dart';
//Parte de cima da aba que abre ao deslizar o dedo, pode-se alterar para colocar qualquer frase pequena que chame atenção
class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          NavBarLogo(),
          Text(
            'APRIMORE', // titulo principal que chame atenção
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Text(
            'SEUS CONHECIMENTOS', // titulo principal que chame atenção
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}