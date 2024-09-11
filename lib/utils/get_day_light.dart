import 'package:flutter/material.dart';

(String, DayPeriod) getDayLightTime() {
  final dateTime = DateTime.now();
  final timeNow = TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);

  if (timeNow.hour >= 0 && timeNow.hour < 12) {
    return ('morning', DayPeriod.am);
  } else if (timeNow.hour >= 12 && timeNow.hour < 17) {
    return ('afternoon', DayPeriod.pm);
  } else if (timeNow.hour >= 17 && timeNow.hour < 20) {
    return ('evening', DayPeriod.pm);
  } else {
    return ('night', DayPeriod.pm);
  }
}
