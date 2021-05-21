import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  sending(test) async {
    return await Firestore.instance
        .collection("student-list")
        .document("a")
        .setData(test);
  }
}