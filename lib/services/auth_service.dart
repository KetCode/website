import 'package:inotech/datamodels/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

// -----> DESCOMENTAR QUANDO FOR TESTAR O FIREBASE

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create User obj based on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid) : null;
  }

  // auth change user screen
  Stream<User> get user{
    return _auth.onAuthStateChanged
    .map(_userFromFirebaseUser);
  }

// 2º tutorial o que eu devo descomentar:
  // Email & Senha SignIn
  Future signInWithEmailAndPassword(
    String email, String password) async {
      try{ 
        AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
        FirebaseUser user = result.user;
        return _userFromFirebaseUser(user);
      } catch (e){
        print(e.toString());
        return null;
      }
    }

  // // Email & Senha SignIn
  // Future<String> signInWithEmailAndPassword(
  //   String email, String password) async {
  //     return (await _auth.signInWithEmailAndPassword(
  //             email: email, password: password))
  //        .uid;
  //   }

  // Sign Out
  Future signOut() async {
    try{
      return await _auth.signOut();
    } catch(e){
      print(e.toString());
      return null;
    }
    
  }

  //  // Contact Form (precisa mudar algumas configuraçoes pq eu so copiei e coloquei do sign in)
  // Future signInWithEmailAndPassword(
  //   String email, String password) async {
  //     try{ 
  //       AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
  //       FirebaseUser user = result.user;
  //       await DatabaseService(uid: user.uid).updateUserData('a@a.a','a', 'Letra A'); // exemplo para ver se funciona o preenchimento de formulario: email, nome, mensagem.
  //       return _userFromFirebaseUser(user);
  //     } catch (e){
  //       print(e.toString());
  //       return null;
  //     }
  //   }

}