class ProgressClock {
  
  // Required attributes
  int id;
  String name;
  int maxProgressLevel;
  int currentProgressLevel;

  // Constructor Method
  ProgressClock({
    required this.id, 
    required this.name,
    required this.maxProgressLevel,
    required this.currentProgressLevel
    });

  // Method to Increase Clock Current Level
  void increaseCurrentProgressLevel() {
    if(currentProgressLevel < maxProgressLevel) {
      currentProgressLevel++;
    }
  }

  // Method to Decrease Clock Current Level
  void decreaseCurrentProgressLevel() {
    if(currentProgressLevel > 0) {
      currentProgressLevel--;
    }
  }
}