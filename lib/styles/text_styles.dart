import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Retorna o estilo para o titulo da pagina baseado no [deviceScreenType] do texto.
TextStyle titleTextStyle(DeviceScreenType deviceScreenType) {
  double titleSize = deviceScreenType == DeviceScreenType.Mobile ? 50 : 80;
  return TextStyle(
      fontWeight: FontWeight.w800, height: 0.9, fontSize: titleSize);
}

/// Retorna o estilo para a descrição da pagina baseado no [deviceScreenType] do texto.
TextStyle descriptionTextStyle(DeviceScreenType deviceScreenType) {
  double descriptionSize =
      deviceScreenType == DeviceScreenType.Mobile ? 16 : 21;

  return TextStyle(
    fontSize: descriptionSize,
    height: 1.7,
  );
}
