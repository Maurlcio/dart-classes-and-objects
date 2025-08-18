import 'smart_device.dart';

class Alarm extends SmartDevice{
    bool triggeredAlarm = false;

    void triggerAlarm(){
        triggeredAlarm = true;
    }

    @override
    void turnOn() {
        status = true;
    }
    
    @override
    void turnOff() {
        if (status){
            triggerAlarm();
            status = false;
        }
        status = false;
    }
}