class RegisterEvents {
  final events = [];

  void addEvent(String eventName) {
    events.add(eventName);
  }

  void showEvents() {
    print('\n# Events registered #');
    for (var event in events) {
      print(event);
    }
  }
}

class ViewA {
  void onClick() {
    RegisterEvents()
      ..addEvent('Click A')
      ..showEvents();
  }
}

class ViewB {
  void onClick() {
    RegisterEvents()
      ..addEvent('Click B')
      ..showEvents();
  }
}

class ViewC {
  void onClick() {
    RegisterEvents()
      ..addEvent('Click C')
      ..showEvents();
  }
}

void main() {
  final viewA = ViewA();
  viewA.onClick();

  final viewB = ViewB();
  viewB.onClick();

  final viewC = ViewC();
  viewC.onClick();
}
