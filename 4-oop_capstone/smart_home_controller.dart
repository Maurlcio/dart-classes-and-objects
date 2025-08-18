import 'smart_device.dart';
import 'light.dart';
import 'thermostat.dart';
import 'alarm.dart';

class SmartHomeController{
  List<SmartDevice> _devices = [];

  List<SmartDevice> get devices => List.unmodifiable(_devices);

  void addDevice(SmartDevice device){
    _devices.add(device);
  }

  void runDiagnostics(){
    for (SmartDevice device in devices){
      if (device is Light){
        print("Smart Light: ${device.status ? "ON" : "OFF"}");
      } else if (device is Thermostat){
        print("Thermostat: ${device.status ? "ON" : "OFF"}, ${device.temperature}°C, EcoMode: ${device.isEcoMode}");
      } else if (device is Alarm){
        print("Alarm: ${device.status ? "ON" : "OFF"}${device.triggeredAlarm ? " — Triggering emergency signal!" : ""}");
     }
    }
  }
}