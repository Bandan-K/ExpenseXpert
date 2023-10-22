import 'package:flutter/material.dart';

class ExportPage extends StatefulWidget {
  const ExportPage({super.key, required bool isSelected}) : _isSelected = isSelected;
  final bool _isSelected;

  @override
  State<ExportPage> createState() => _ExportPageState(_isSelected);
}

class _ExportPageState extends State<ExportPage> {
  final bool _isSelected;

  _ExportPageState(this._isSelected);

  var darkColor = Colors.black;
  var lightColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: _isSelected? darkColor : lightColor,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Add your back button functionality here
              Navigator.pop(context); // For example, pop the current route
            },
          ),
        ),
        backgroundColor: _isSelected? darkColor : lightColor,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Export Data",
              style: TextStyle(fontSize: 35, color: _isSelected? lightColor : darkColor),
            ),
          ),
          buildPdf(),
          build_cal(),
          buildSave()
        ]),
      );
  }

  Widget buildPdf() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            // First button click action
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: _isSelected? darkColor : lightColor,
            fixedSize: const Size(187.0, 50.0),
            side: BorderSide(
                color: _isSelected? lightColor : darkColor,
                width: 2), // Set the width and height you desire
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), // Adjust as needed
                bottomLeft: Radius.circular(20), // Adjust as needed
              ),
            ),
          ),
          child: const Text('CSV'),
        ),
        ElevatedButton(
          onPressed: () {
            // Second button click action
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.shade400,
            fixedSize: const Size(187.0, 50.0),
            side: BorderSide(color: _isSelected? darkColor : lightColor, width: 2),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), // Adjust as needed
                bottomRight: Radius.circular(20),
                // Adjust as needed
              ),
            ),
          ),
          child: const Text('PDF'),
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
                  borderSide: BorderSide(color: _isSelected? darkColor : lightColor, width: 25),
                  borderRadius: BorderRadius.circular(400)),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: _isSelected? darkColor : lightColor, width: 2.5),
              ),
              labelText: "Date",
              suffixIcon: const Icon(Icons.calendar_month),
              labelStyle: TextStyle(color: _isSelected? lightColor : darkColor, fontSize: 16)),
        ),
      ),
      // SizedBox(
      //   height: 10,
      //   width: 10,
      // ),
    );
  }

  Widget buildSave() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: SizedBox(
          width: 125,
          height: 40,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors
                    .purple.shade50, // Set your desired background color here
              ),
            ),
            child: const Text(
              "Export",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
