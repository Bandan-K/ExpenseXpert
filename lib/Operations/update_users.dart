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
}