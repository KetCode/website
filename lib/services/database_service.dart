// import 'package:cloud_firestore/cloud_firestore.dart';

// class DatabaseService {

//   final String uid;
//   DatabaseService({this.uid});

//   // Referencia da coleção no caso o nome vai ser inotechCollection.
//   final CollectionReference inotechCollection = Firestore.instance.collection('contactForm');

//   Future updateContactData(String email, String nome, String mensagem) async {
//     return await inotechCollection.document(uid).setData({
//       'email': email,
//       'name': name,
//       'mensagem': mensagem,
//     });
//   }

//   //get contactForm stream
//   Stream<QuerySnapshot> get contactForm {
//     return inotechCollection.snapshots();
//   }

// }