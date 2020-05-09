import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inotech/styles/text_styles.dart';
import 'package:inotech/widgets/call_to_action/call_to_action.dart';
import 'package:responsive_builder/responsive_builder.dart';
//pagina dos contatos
class ContactsContentDesktop extends StatelessWidget {
  const ContactsContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.Desktop
              ? TextAlign.left
              : TextAlign.center;

      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              SizedBox(height: 50),
              Text('Contato', 
                style: titleTextStyle(sizingInformation.deviceScreenType), 
                textAlign: textAlignment,),
              SizedBox(height: 10,),
              Text('Estamos disponíveis para atender a qualquer dúvida.', // posso acrescentar: Se você tem alguma pergunta ou comentário, preencha o formulário abaixo com suas informações. 
                style: descriptionTextStyle(sizingInformation.deviceScreenType), 
                textAlign: textAlignment,),
              SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 250),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Nome',
                        border: InputBorder.none,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Email',
                        border: InputBorder.none,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      ),
                    TextField(
                      maxLines: 7,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Mensagem',
                        border: InputBorder.none,
                      ),
                    ),

                    SizedBox(height: 30),
                    MaterialButton(
                      onPressed:  () {}, // Colocar o diretorio da pagina aqui.
                      child: CallToAction('Enviar'),
                      ),
                  ],
                ),
              ),
            ]
          ),
        )
      );
    }); 
  }
} 