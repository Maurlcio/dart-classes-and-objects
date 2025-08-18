import 'light.dart';
import 'smart_device.dart';
import 'thermostat.dart';
import 'alarm.dart';
import 'smart_home_controller.dart';

void main(){
  SmartHomeController controller = SmartHomeController();

  controller.addDevice(Light());
  controller.addDevice(Thermostat());
  controller.addDevice(Alarm());

  for (SmartDevice device in controller.devices){
    device.turnOn();
  }
  controller.devices[2].turnOff();
  (controller.devices[1] as Thermostat).setTemperature(22);

  controller.runDiagnostics();
}