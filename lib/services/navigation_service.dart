import 'package:flutter/material.dart';
//atalho para o sistema de navegação entre abas
class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState.pushNamed(routeName);
  }

//codigo de baixo foi comentado pq estava dando erro mas serve para quando apertar o botão voltar da aba a pagina volta
  //bool goBack() {
  //  return navigatorKey.currentState.pop();
  //}
}