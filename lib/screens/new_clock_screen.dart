import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:progress_clocks_fitd_flutter/models/progress_clocks_list.dart';

const List<String> maxProgressLevelOptions = ['4', '6', '8'];

class NewClockScreen extends StatefulWidget {
  const NewClockScreen({super.key});

  @override
  State<NewClockScreen> createState() => _NewClockScreenState();
}

class _NewClockScreenState extends State<NewClockScreen> {
  // Form key
  final _formKey = GlobalKey<FormState>();

  // Form Fields Controller - to get input values
  TextEditingController clockNameController = TextEditingController();
  String clockMaxProgressLevel = maxProgressLevelOptions.first;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add New Progress Clock'),
        ),
        body: Center(
          child: FractionallySizedBox(
              widthFactor: 0.9,
              heightFactor: 0.9,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: clockNameController,
                        validator: (String? value) {
                          return (value == null || value.isEmpty)? 'Name is required to create new clock' : null;
                        },
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.white70,
                              width: 2,
                            )),
                            fillColor: Colors.white70,
                            labelText: 'Progress Clock Name',
                            labelStyle:
                                TextStyle(color: Colors.white, fontSize: 20),
                            hintText: 'Type progress clock name',
                            hintStyle: TextStyle(
                              color: Colors.white70,
                            )),
                      ),
                      DropdownButtonFormField(
                        icon: const Icon( Icons.arrow_downward ),
                        items: maxProgressLevelOptions.map<DropdownMenuItem<String>>(
                          (String value) {
                          return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.white70),
                              )
                            );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            clockMaxProgressLevel = value!;
                          });
                        },
                        validator: (String? value) {
                          return (value == null || value.isEmpty) ? 'Max Level is required to create new clock' : null;
                        },
                        style: const TextStyle(fontSize: 18),
                        dropdownColor: Colors.black87,
                        decoration: const InputDecoration(
                            labelText: 'Progress Clock Max Level',
                            labelStyle:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Verify if all Form fields are valid
                          if(_formKey.currentState!.validate()) {
                            
                            // Provider ProgressClocksList add the new progress clock to list
                            Provider.of<ProgressClocksList>(context, listen: false).addProgressClock(
                              name: clockNameController.text,
                              maxProgressLevel: int.parse(clockMaxProgressLevel)
                            );

                            // Return a feedback to user
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('New Progress Clock created!'),
                                backgroundColor: Colors.green,
                              )
                            );

                            // Back to previous page
                            Navigator.pop(context);

                          } else {

                          }
                        }, 
                        child: const Text(
                          'Create New Clock'
                        )
                      )
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
