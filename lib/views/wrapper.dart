import 'package:flutter/material.dart';
import 'package:inotech/datamodels/user.dart';
import 'package:inotech/views/home/home_view.dart';
import 'package:inotech/views/login/login_view.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    
    if(user == null){
      return LoginView();
    } else{
    return HomeView();
    }
  }
}