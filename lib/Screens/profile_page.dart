import 'package:expensexpert/Operations/update_users.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  DateTime? selectedDate;
  String? savedName;

  String? savedEmail;
  String? savedPhoneNumber;
  String? savedGender;
  DateTime? savedDateOfBirth;
  String? selectedGender;

  bool isEditing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Text('User Profile', style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: const TextStyle(color: Colors.white),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    enabled: isEditing,
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: emailController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: const TextStyle(color: Colors.white),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    enabled: isEditing,
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: phoneController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    labelStyle: const TextStyle(color: Colors.white),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    enabled: isEditing,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Gender',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Male',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                    ),
                    const Text('Male', style: TextStyle(color: Colors.white)),
                    Radio(
                      value: 'Female',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                    ),
                    const Text('Female', style: TextStyle(color: Colors.white)),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Text(
                      'Date of Birth',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () async {
                        final selectedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                        );

                        if (selectedDate != null) {
                          setState(() {
                            this.selectedDate = selectedDate;
                          });
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple),
                      ),
                      child: const Text(
                        'Select Date',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                if (selectedDate != null)
                  Text(
                    'Date of Birth: ${selectedDate?.toLocal().toString().split(' ')[0]}',
                    style: const TextStyle(color: Colors.white),
                  ),
                const SizedBox(height: 16),
                if (isEditing)
                  ElevatedButton(
                    onPressed: () {
                      if (selectedGender != null && selectedDate != null) {
                        savedName = nameController.text;
                        savedEmail = emailController.text;
                        savedPhoneNumber = phoneController.text;
                        savedGender = selectedGender;
                        savedDateOfBirth = selectedDate;
                      }
                      setState(() {
                        isEditing = false;
                        UpdateUsers.addUser(
                          'John Doe',
                          'johndoe@example.com',
                          '1234567890',
                          'Male',
                          DateTime.now(),
                        );
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                if (!isEditing)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isEditing = true;
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                    ),
                    child: const Text(
                      'Edit',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
