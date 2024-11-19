import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  Future addUserDetails(Map<String,dynamic> userData,String user_id) async{
    FirebaseFirestore.instance.collection('users').doc(user_id).set(userData);
  }
}