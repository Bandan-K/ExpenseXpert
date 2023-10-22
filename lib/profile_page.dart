import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var gender = "Male";

  String value = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Profile",
              style: TextStyle(color: Colors.white, fontSize: 25),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 120,
                width: 120,
                child: Image.asset(
                  "assets/images/icons8-male-user-50 (black).png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Name",
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.left,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "",
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              "Name",
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.left,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "",
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            RadioListTile(
              activeColor: Colors.white,
              title: Text("Male",style: TextStyle(color: Colors.white,fontSize: 18),),
              value: 'Male',
              groupValue: gender,
              onChanged: (v) {
                gender = v!;
                value = v;
                setState(() {});
              },
            ),
            RadioListTile(
              activeColor: Colors.white,
              title: Text("Female",style: TextStyle(color: Colors.white,fontSize: 18),),
              value: 'Female',
              groupValue: gender,
              onChanged: (v) {
                gender = v!;
                value = v;
                setState(() {});
              },
            ),
            RadioListTile(
              activeColor: Colors.white,
              title: Text("Other",style: TextStyle(color: Colors.white,fontSize: 18),),
              value: 'Other',
              groupValue: gender,
              onChanged: (v) {
                gender = v!;
                value = v;
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}
