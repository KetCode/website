import 'package:flutter/material.dart';
import 'package:inotech/widgets/call_to_action/call_to_action.dart';
import 'package:inotech/widgets/course_details/course_details.dart';
//configurações para a tela de um celular
class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),
            CourseDetails(),
            SizedBox(height: 30,),
            CallToAction('Join Course'),
            SizedBox(height: 30,),
            //VideosView(), // Aqui eu posso tirar esse layout e usar qualquer outro para aparecer na tela inicial.
          ],
        ),
      ),
    );
  }
}