abstract class SmartDevice{
  bool _isOn = false;

  bool get status => _isOn;
  set status(bool value) => _isOn = value;

  void turnOn();
  void turnOff();

  String printStatus(){
    if (status) {
      return("Status: ON.");
    } else {
      return("Status: OFF.");
    }
  }
}