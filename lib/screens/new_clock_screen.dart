import 'package:flutter/material.dart';

class NewClockScreen extends StatefulWidget {
  const NewClockScreen({super.key});

  @override
  State<NewClockScreen> createState() => _NewClockScreenState();
}

class _NewClockScreenState extends State<NewClockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Progress Clock'),
      ),
      body: Container(),
    );
  }
}