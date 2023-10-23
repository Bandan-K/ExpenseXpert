import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';

class UpdateUsers{
    static addUser(String name, String email, String phone, String gender, DateTime dob)async {
      CollectionReference users = FirebaseFirestore.instance.collection('users');
      users.add({
        'Name' : name,
        'Email': email,
        'Phone' : phone,
        'Gender' : gender,
        'DOB' : dob,
      })
      .then((value) => log("User Added"))
          .catchError((error) => log("Failed to add user: $error"));
    }

    static Future<Map<String, dynamic>> getDocumentData(String documentId) async {
      final document = await FirebaseFirestore.instance.collection('users').doc(documentId).get();

      if (document.exists) {
        return document.data() as Map<String, dynamic>;
      } else {
        throw Exception("Document does not exist");
      }
    }

    // static Future<Map<String, dynamic>> getSpecDocumentData(String documentId) async {
    //   DocumentReference doc_ref = FirebaseFirestore.instance.collection("board").document(doc_id).collection("Dates").document();
    //
    //   DocumentSnapshot docSnap = await doc_ref.get();
    //   var doc_id2 = docSnap.reference.documentID;
    //   final document = await FirebaseFirestore.instance.collection('users').doc(documentId).get();
    //
    //   return document.data() as Map<String, dynamic>;
    // }
}