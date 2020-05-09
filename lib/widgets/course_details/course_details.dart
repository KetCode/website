import 'package:flutter/material.dart';
import 'package:inotech/styles/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
//Lugar onde posso editar todo o conteudo mostrado na pagina principal
class CourseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.Desktop
              ? TextAlign.left
              : TextAlign.center;
              
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'FLUTTER WEB.\nINOTECH', //texto principal para chamar atenção
              style: titleTextStyle(sizingInformation.deviceScreenType),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text( //texto grande
              'Essa é a pagina inicial inotech usando a linguagem flutter, Flutter Web - website development. Aqui vamos poder colocar todas os videos e demais coisas que seja possivel com um link para o site bonitinho.',
              style: descriptionTextStyle(sizingInformation.deviceScreenType),
              textAlign: textAlignment,
            ),
          ],
        ),
      );
    });
  }
}