import 'package:flutter/material.dart';
import 'package:progress_clocks_fitd_flutter/models/progress_clock.dart';
import 'package:provider/provider.dart';

import 'package:progress_clocks_fitd_flutter/models/progress_clocks_list.dart';
import 'package:progress_clocks_fitd_flutter/screens/list_screen.dart';

void main() {
  runApp(
    // Provider which notify changes in ProgressClocksList
    ChangeNotifierProvider(
      create: (context) => ProgressClocksList(progressClocksList: [ProgressClock(id: 0, name: 'Relógio', maxProgressLevel: 4, currentProgressLevel: 0)]),
      child: const MyApp(),
    )
  );
}

//TODO: Add routes to home page, clock list page and new clock form
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Progress Clocks (FITD)',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const ListScreen(title: 'Progress Clocks List'),
    );
  }
}