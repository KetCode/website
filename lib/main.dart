// import 'package:flutter/material.dart';
// import 'package:inotech/datamodels/user.dart';
// import 'package:inotech/services/auth_service.dart';
// import 'package:inotech/views/layout_template/layout_template.dart';
// import 'package:inotech/views/wrapper.dart';
// import 'package:provider/provider.dart';
// //pagina principal que chama o arquivo templeta onde tem todos as configurações da pagina inicial
// import 'lacator.dart';

// void main() {
//   setupLocator();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Inotech', //titulo da pagina
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//           textTheme: Theme.of(context).textTheme.apply(
//             fontFamily: 'Open Sans', //fonte thema da pagina
//           )  
//         ),
//         home: LayoutTemplate(),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:inotech/datamodels/user.dart';
import 'package:inotech/services/auth_service.dart';
import 'package:inotech/views/wrapper.dart';
import 'package:provider/provider.dart';
//pagina principal que chama o arquivo templeta onde tem todos as configurações da pagina inicial
import 'lacator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
     value: AuthService().user,
        child: MaterialApp(
        title: 'Inotech', //titulo da pagina
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Open Sans', //fonte thema da pagina
          )  
        ),
        home: Wrapper(),
      ),
    );
  }
}