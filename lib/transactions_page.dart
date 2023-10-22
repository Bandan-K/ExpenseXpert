import 'package:flutter/material.dart';
import 'class.dart';
class TransactionsPage extends StatefulWidget {
  TransactionsPage({super.key, required bool isSelected}) : _isSelected = isSelected;
  final bool _isSelected;

  @override
  State<TransactionsPage> createState() => _TransactionsPageState(_isSelected);
}

class _TransactionsPageState extends State<TransactionsPage> {
  final bool _isSelected;

  _TransactionsPageState(this._isSelected);

  var darkColor = Colors.black;
  var lightColor = Colors.white;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isSelected? darkColor : lightColor,
      appBar: AppBar(
        backgroundColor: _isSelected? darkColor : lightColor,
        title: Text("Transactions"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Text("Transactions",style: TextStyle(color: _isSelected? lightColor : darkColor),),
            ]),
      ),
    );
  }

}
