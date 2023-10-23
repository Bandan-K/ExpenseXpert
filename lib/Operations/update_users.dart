import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UpdateUsers{
  CollectionReference users = FirebaseFirestore.instance.collection('users');
    Future<void> addUser(String name, String email, String phone, String gender, DateTime dob)async {
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