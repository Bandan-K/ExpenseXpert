import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Transaction', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  "Transaction Name",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextField(
                  controller: _textEditingController,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 143, 136, 136))),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  "Transaction Amount",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextField(
                  controller: _textEditingController,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 143, 136, 136))),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          "Date",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 175,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: TextField(
                            controller: _textEditingController,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(
                                          255, 143, 136, 136))),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          "Time",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 175,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: TextField(
                            controller: _textEditingController,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(
                                          255, 143, 136, 136))),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  "Category",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextField(
                  controller: _textEditingController,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 143, 136, 136))),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  "Mode",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextField(
                  controller: _textEditingController,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 143, 136, 136))),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 39, 0, 0),
                  child: SizedBox(
                    width: 125,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.purple
                              .shade50, // Set your desired background color here
                        ),
                      ),
                      child: const Text(
                        "Add",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}