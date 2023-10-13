import 'package:flutter/material.dart';

class ExportPage extends StatefulWidget {
  const ExportPage({super.key});

  @override
  State<ExportPage> createState() => _ExportPageState();
}

class _ExportPageState extends State<ExportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Add your back button functionality here
              Navigator.pop(context); // For example, pop the current route
            },
          ),
        ),
        backgroundColor: Colors.black,
        body: Container(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Export Data",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
            build_pdf(),
            build_cal(),
            build_save()
          ]),
        ),
      );
  }

  Widget build_pdf() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            // First button click action
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            fixedSize: Size(187.0, 50.0),
            side: BorderSide(
                color: Colors.white,
                width: 2), // Set the width and height you desire
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), // Adjust as needed
                bottomLeft: Radius.circular(20), // Adjust as needed
              ),
            ),
          ),
          child: Text('CSV'),
        ),
        ElevatedButton(
          onPressed: () {
            // Second button click action
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey,
            fixedSize: Size(187.0, 50.0),
            side: BorderSide(color: Colors.white, width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), // Adjust as needed
                bottomRight: Radius.circular(20),
                // Adjust as needed
              ),
            ),
          ),
          child: Text('PDF'),
        ),
      ],
    );
  }

  Widget build_cal() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
        child: TextField(
          // obscureText: !isVisible,

          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white54, width: 25),
                  borderRadius: BorderRadius.circular(400)),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2.5),
              ),
              labelText: "Date",
              suffixIcon: Icon(Icons.calendar_month),
              labelStyle: TextStyle(color: Colors.white, fontSize: 16)),
        ),
      ),
      // SizedBox(
      //   height: 10,
      //   width: 10,
      // ),
    );
  }

  Widget build_save() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Container(
          width: 125,
          height: 40,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors
                    .purple.shade700, // Set your desired background color here
              ),
            ),
            child: Text(
              "Export",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
