import 'smart_device.dart';

class Thermostat extends SmartDevice {
  int _temperature = 0;

  int get temperature => _temperature;
  set temperature(int value) => _temperature = value;

  bool get isEcoMode => temperature < 20;

  @override
  void turnOn() {
    status = true;
  }

  @override
  void turnOff() {
    status = false;
  }

  void setTemperature(int newTemperature){
    if (status){
      temperature = newTemperature;
    } else {
      print("ERROR: Thermostat is currently OFF");
    }
  }
}