import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:practice/models/user_model.dart';

final firebaseFirestore = FirebaseFirestore.instance;
final CollectionReference<Map<String,dynamic>> collection = firebaseFirestore.collection('user');
Future<void> addUser(User user)async{
  await collection.doc(user.name).set(user.toJson as Map<String, dynamic>);
}