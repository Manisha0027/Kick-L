import 'package:lkick/alarm_info.dart';
import 'package:lkick/enum.dart';

import 'menu_info.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock,
  title: 'Clock', imageSource: 'images/clock_icon.png'),
   MenuInfo(MenuType.alarm,
  title: 'Alarm', imageSource: 'images/alarm_icon.png'),
  
];

List<AlarmInfo> alarms = [
  AlarmInfo(DateTime.now().add(Duration(hours: 1)),description: 'StudyTime'),
  AlarmInfo(DateTime.now().add(Duration(hours: 2)),description: 'Exercise'),
];