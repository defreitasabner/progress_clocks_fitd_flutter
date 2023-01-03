class ProgressClock {
  
  // Required attributes
  int id;
  String name;
  int maxProgressLevel;
  int currentProgressLevel = 0;

  // Not required attribute
  String? description;

  ProgressClock({
    required this.id, 
    required this.name,
    required this.maxProgressLevel,
    required this.currentProgressLevel,
    this.description
    });

  void increaseCurrentProgressLevel() {
    if(currentProgressLevel < maxProgressLevel) {
      currentProgressLevel++;
    }
  }

  void decreaseCurrentProgressLevel() {
    if(currentProgressLevel > 0) {
      currentProgressLevel--;
    }
  }
}