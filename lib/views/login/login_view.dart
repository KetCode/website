import 'package:flutter/material.dart';
import 'package:inotech/constants/app_colors.dart';
import 'package:inotech/constants/loading.dart';
import 'package:inotech/services/auth_service.dart';
import 'package:inotech/widgets/call_to_action/call_to_action.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// esse modelo ficou bem melhor pq não preciso modificar para o mobile tbm, então foi bem mais rápido.
class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  
  String email = '';
  String password = '';
  String error = '';

  final AuthService _auth = AuthService();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool loading = false;

  Widget _buildEmail(){
    return TextFormField(
      onChanged: (val) { setState(() => email = val);},
      validator: (String value){
        if(value.isEmpty){
          return "Campo está em branco";
        } 
        if(!RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?").hasMatch(value)){
          return "Insira um endereço de e-mail válido";
        }
        return null;
      },
      onSaved: (String value){
        email = value;
      },
      decoration: InputDecoration(
        labelText: 'E-mail',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
  Widget _buildPassword(){
    return TextFormField(
      onChanged: (val) { setState(() => password = val);},
      validator: (String value){
        if(value.isEmpty){
          return "Campo está em branco";
        }  return null;
      },
      onSaved: (String value){
        password = value;
      },
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Senha',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 500),
            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 25.0),
            child: Form(
              key: _formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset('assets/logo.png'), // Logo da inotech no topo.
                    _buildEmail(),
                    _buildPassword(),
                    FlatButton(
                      child: CallToAction('Entrar'),
                      onPressed: () async{
                        if(!_formKey.currentState.validate()){
                          setState(() => loading = true);
                          dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                          if(result == null){
                            setState(() {
                              error = 'Não foi possível entrar com seus dados';
                              loading = false;
                              });
                          }
                          return;
                        }
                        _formKey.currentState.save();
                        print(email);
                        print(password);
                      },
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      child: Text(
                        "Esqueceu a senha?",
                        style: TextStyle(fontSize: 17.0, color: primaryColor),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ]
                ),
            ),
          ),
        ));
  }
}