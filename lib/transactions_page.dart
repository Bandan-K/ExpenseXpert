import 'package:flutter/material.dart';
import 'class.dart';
class TransactionsPage extends StatelessWidget {
  TransactionsPage({super.key});
  List<ContactDetails> contact = [
    ContactDetails('UNNATI','21SOECE11132',7654322345),
    ContactDetails('SHRUTI','21SOECE11109',6543456777),
    ContactDetails('PRIYANSHI','21SOECE11121',8765433456),
    ContactDetails('KAUSHAL','21SOEIT11110',7654345687),
    ContactDetails('ADITI','21SOECE11135',987654345),
    ContactDetails('LIPSA','21SOECE11133',7654456787),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text("Column and row"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              for(int i = 0; i < contact.length; i++)
                getContactCard(contact[i]),
            ]),
      ),
    );
  }

  getContactCard(ContactDetails yu){
    return Card(
      child: Container(
        // height: 120,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              yu.name,
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueAccent),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  yu.enroll,
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.lightBlueAccent),
                ),
                Text(
                  yu.mono.toString(),
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
