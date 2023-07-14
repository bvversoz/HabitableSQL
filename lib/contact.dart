// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';

import 'form_field/Text_form_field.dart';
import 'form_field/availability.dart';
import 'form_field/carpool_dropdown.dart';
import 'form_field/transportation_dropdown.dart';
import 'main.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({Key? key});

  @override
  _ContactMeState createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  final TextEditingController textFieldController = TextEditingController();
  final TextEditingController emailTextFieldController = TextEditingController();
  final TextEditingController phoneTextFieldController = TextEditingController();
  String selectedTechField = '';
  String selectedCarpoolValue = '';

  @override
  void dispose() {
    textFieldController.dispose();
    emailTextFieldController.dispose();
    phoneTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Get the current theme

    return FloatingActionButton(

      mini: true,
      backgroundColor: theme.scaffoldBackgroundColor,
      elevation: 4,
      tooltip: 'Connect',
      child: Icon(
        Icons.settings_accessibility,
        color: theme.primaryColor,
        size: 15,
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ContactPage();
        }));
      },
    );
  }
}

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final TextEditingController textFieldController = TextEditingController();
  final TextEditingController emailTextFieldController = TextEditingController();
  final TextEditingController nameTextFieldController = TextEditingController();
  final TextEditingController phoneTextFieldController = TextEditingController();
  String selectedTechField = '';
  String selectedCarpoolValue = '';
  String selectedAvailabilityValue = '';

  @override
  void dispose() {
    textFieldController.dispose();
    emailTextFieldController.dispose();
    phoneTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Get the current theme

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lets Get Started!',
          style: TextStyle(
            color: Color(0xFF4446A3),
          ),
        ),
        backgroundColor: theme.primaryColor, // Use the primary color from the theme
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormTextField(
                controller: nameTextFieldController,
                labelText: 'First Name',
                hintText: '',
              ),
              FormTextField(
                controller: nameTextFieldController,
                labelText: 'Last Name',
                hintText: '',
              ),
              FormTextField(
                controller: emailTextFieldController,
                labelText: 'Email',
                hintText: '',
              ),
              FormTextField(
                controller: phoneTextFieldController,
                labelText: 'Phone Number',
                hintText: 'ex (513) 123-4567',
              ),
              TechFieldDropdown(
                selectedValue: selectedTechField,
                onChanged: (String? value) {
                  setState(() {
                    selectedTechField = value ?? '';
                  });
                },
              ),
              CarpoolDropdown(
                selectedValue: selectedCarpoolValue,
                onChanged: (String? value) {
                  setState(() {
                    selectedCarpoolValue = value ?? '';
                  });
                },
              ),
              Availability(
                selectedValue: selectedAvailabilityValue,
                onChanged: (String? value) {
                  setState(() {
                    selectedAvailabilityValue = value ?? '';
                  });
                },
              ),
              Text(
                'Additional Notes:',
                style: TextStyle(color: Color(0xFFF6E3A4)),
              ),
              SizedBox(height: 8),
              TextField(

                controller: textFieldController,
                maxLines: 4,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white, // Set the desired color for the focused outline
                      width: 2.0, // Set the desired width for the focused outline
                    ),
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Your message',

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        final String email = emailTextFieldController.text;
                        if (_validateEmail(email)) {
                          final gsheets = GSheets(credentials);
                          final spreadsheetID = '18qgJIg9DFehV1WgHjcBrMD7oGie77xvCEhxySUhXLrY';

                          // Get the spreadsheet
                          final ssheet = await gsheets.spreadsheet(spreadsheetID);
                          final ws = await ssheet.worksheetByTitle('volunteers');

                          // Get existing values and calculate the last row index
                          final values = await ws?.values.allRows();
                          final lastRowIndex = values?.length ?? 0;

                          // Add the message, timestamp, and additional text to the new row
                          final comments = [
                            '${textFieldController.text}',
                          ];
                          final timeStamp = [DateTime.now().toString()];

                          // Insert the new row 1 row below the last row index
                          await ws?.values.insertRow(
                            lastRowIndex + 1,
                            comments,
                            fromColumn: 3,
                          );
                          await ws?.values.insertRow(
                            lastRowIndex + 1,
                            timeStamp,
                            fromColumn: 2,
                          );
                          await ws?.values.insertRow(
                            lastRowIndex + 1,
                            [email],
                            fromColumn: 1,
                          );

                          textFieldController.clear();
                          emailTextFieldController.clear();

                          Navigator.of(context).pop();

                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  'Thank you for reaching out!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'I look forward to connecting in the near future.',
                                    ),
                                    SizedBox(height: 16),
                                    Image.asset(
                                      'habitat.png',
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Invalid Email'),
                                content: Text('Please enter a valid email address.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      child: Text('Send'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        textFieldController.clear();
                        emailTextFieldController.clear();
                      },
                      child: Text('Cancel'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _validateEmail(String email) {
    final RegExp emailRegex =
        RegExp(r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$');
    return emailRegex.hasMatch(email);
  }
}
