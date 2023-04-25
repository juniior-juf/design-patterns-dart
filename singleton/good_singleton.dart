class RegisterEvents {
  final events = [];
  static RegisterEvents? _instance;

  RegisterEvents._();

  static RegisterEvents get instance {
    if (_instance == null) _instance = RegisterEvents._();
    return _instance!;
  }

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
    RegisterEvents.instance
      ..addEvent('Click A')
      ..showEvents();
  }
}

class ViewB {
  void onClick() {
    RegisterEvents.instance
      ..addEvent('Click B')
      ..showEvents();
  }
}

class ViewC {
  void onClick() {
    RegisterEvents.instance
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
