import 'package:flutter/material.dart';
import 'package:progress_clocks_fitd_flutter/models/progress_clocks_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    // Provider which notify changes in ProgressClocksList
    ChangeNotifierProvider(
      create: (context) => ProgressClocksList(progressClocksList: []),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Container(
        color: Colors.green,
      ),
    );
  }
}