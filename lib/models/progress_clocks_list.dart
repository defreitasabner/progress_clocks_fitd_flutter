import 'package:flutter/material.dart';
import 'package:progress_clocks_fitd_flutter/models/progress_clock.dart';

//TODO: Implement more methods and change notify in methods ( notifyListener() )
class ProgressClocksList extends ChangeNotifier {
  
  List<ProgressClock> progressClocksList;

  ProgressClocksList({
    required this.progressClocksList
  });

  void addProgressClock({
    required int id, 
    required String name, 
    required int maxProgressLevel, 
    required int currentProgressLevel, 
    String? description
    }) {

    ProgressClock(
      id: id, 
      name: name, 
      maxProgressLevel: maxProgressLevel, 
      currentProgressLevel: currentProgressLevel,
      description: description != null? description : ''
    );

  }

  void removeProgressClock() {

  }

  void editProgressClock() {

  }

}