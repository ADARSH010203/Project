import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  DatabaseMethods({this.userId});
  final String? userId;
  
  Future addUserDetails(Map<String,dynamic> userData,String? userId) async{
    FirebaseFirestore.instance.collection('users').doc(userId).set(userData);
  }

  Future getUserDetails() async {
    return await FirebaseFirestore.instance.collection('users').doc(userId).get();
  }
}