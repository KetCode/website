import 'package:flutter/material.dart';
//utilização da logo nas abas
class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: Image.asset('assets/logo.png'), //logo da inotech no topo
    );
  }
}