import 'package:flutter/material.dart';
import 'package:inotech/views/login/login_view.dart';
import 'package:inotech/widgets/call_to_action/call_to_action.dart';
import 'package:inotech/widgets/course_details/course_details.dart';
//configurações para tela desktop e tablet
class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 200),
            Row(
              children: <Widget>[
                CourseDetails(),
                Expanded(
                  child: Center(
                    child: MaterialButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
                      },
                      child: CallToAction('Fazer Parte'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            Column(
              children: <Widget>[
              //VideosView(), // Aqui eu posso adicionar qualquer outra pagina.
              ],
            )
          ],
        ),
      ),
    );
  }
}