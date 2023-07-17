// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/material.dart';

import '../home/bottom_bar.dart';
import '../home/components_appbar/title.dart';
class DonatePage extends StatefulWidget {
  @override
  _DonatePageState createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  int currentStep = 0;
  List<String> banks = ['Bank A', 'Bank B', 'Bank C'];
  String selectedBank = 'Bank A'; // Set a default selected bank

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBarTitle(title: 'Make a Donation', icon: Icons.payments_outlined,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [



          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 4,
              shadowColor: Colors.black,
              child: Stepper(
                currentStep: currentStep,
                onStepContinue: () {
                  setState(() {
                    if (currentStep < 2) {
                      currentStep++;
                    }
                  });
                },
                onStepCancel: () {
                  setState(() {
                    if (currentStep > 0) {
                      currentStep--;
                    }
                  });
                },
                steps: [
                  Step(
                    title: Text('Choose a Bank'),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Select Bank',
                            prefixIcon: Icon(Icons.account_balance),
                          ),
                          value: selectedBank,
                          items: banks.map((bank) {
                            return DropdownMenuItem<String>(
                              value: bank,
                              child: Text(bank),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedBank = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    isActive: currentStep == 0,
                    state: currentStep == 0 ? StepState.editing : StepState.complete,
                  ),
                  Step(
                    title: Text('Enter Card Details'),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Card Number',
                            prefixIcon: Icon(Icons.credit_card),
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'MM/YY',
                                  prefixIcon: Icon(Icons.calendar_today),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'CVC',
                                  prefixIcon: Icon(Icons.security),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Zip',
                                  prefixIcon: Icon(Icons.location_on),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Amount',
                            prefixIcon: Icon(Icons.attach_money),
                          ),
                        ),
                      ],
                    ),
                    isActive: currentStep == 1,
                    state: currentStep == 1 ? StepState.editing : StepState.disabled,
                  ),
                  Step(
                    title: Text('Review Donation'),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Bank: $selectedBank',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('Card Number: ************1234'),
                        SizedBox(height: 8),
                        Text('MM/YY: 12/23'),
                        SizedBox(height: 8),
                        Text('CVC: ***'),
                        SizedBox(height: 8),
                        Text('Zip: 12345'),
                        SizedBox(height: 8),
                        Text('Amount: \$100'),
                      ],
                    ),
                    isActive: currentStep == 2,
                    state: currentStep == 2 ? StepState.editing : StepState.disabled,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomInfoBar(),
    );
  }
}
