import 'smart_device.dart';

class Light extends SmartDevice{
  @override
  void turnOn() {
    status = true;
  }

  @override
  void turnOff() {
    status = false;
  }
}