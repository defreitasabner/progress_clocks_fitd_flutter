import 'package:flutter/material.dart';
import 'package:progress_clocks_fitd_flutter/models/progress_clock.dart';

class ProgressClocksList extends ChangeNotifier {
  
  List<ProgressClock> progressClocksList;

  ProgressClocksList({
    required this.progressClocksList
  });

  void addProgressClock({ 
    required String name, 
    required int maxProgressLevel, 
    int currentProgressLevel = 0
    }) {

    progressClocksList.add(
      ProgressClock(
      id: progressClocksList.length, 
      name: name, 
      maxProgressLevel: maxProgressLevel, 
      currentProgressLevel: currentProgressLevel
      )
    );

    notifyListeners();

  }

  void removeProgressClock() {

  }

  void editProgressClock() {

  }

  void updateProgressClock() {
    notifyListeners();
  }

}