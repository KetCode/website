import 'package:flutter/material.dart';
import 'dart:html' as html;
// para adicionar o ponteiro no botão ou nome só colocar .showCursorOnHover no ScreenTypeLayout
extension HoverExtensions on Widget {
  static final appContainer = html.window.document.getElementById('app-container');
  
  Widget get showCursorOnHover {
    return MouseRegion(
      child: this, // quando o mouse passa pela palavra ele vai mudar para ponteiro e quando sair vai voltar ao normal
      onHover: (event) => appContainer.style.cursor = 'pointer',
      onExit: (event) => appContainer.style.cursor = 'default',
    );
  }
}