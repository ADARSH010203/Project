import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/SetAlarm.dart';
import 'package:flutter_application_1/Home/footer.dart';

class Alamscreen extends StatefulWidget {
  const Alamscreen({super.key});

  @override
  State<Alamscreen> createState() => _AlamscreenState();
}

class _AlamscreenState extends State<Alamscreen> {
  List<Alarm> alarms = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alarm')),
      body: ListView.builder(
        itemCount: alarms.length,
        itemBuilder: (context, index) {
          return AlarmsTile(
            alarm: alarms[index],
            onToggle: (bool value) {
              setState(() {
                alarms[index] = Alarm(
                  alarms[index].time,
                  alarms[index].label,
                  alarms[index].repeatDays,
                  value,
                );
              });
            },
            onEdit: () async {
              final updatedAlarm = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SetAlarmsScreen(
                    existingAlarm: alarms[index],
                  ),
                ),
              );
              if (updatedAlarm != null) {
                setState(() {
                  alarms[index] = updatedAlarm;
                  _sortAlarmsByTime();
                });
              }
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newAlarm = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SetAlarmsScreen()),
          );
          if (newAlarm != null) {
            setState(() {
              alarms.add(newAlarm);
              _sortAlarmsByTime();
            });
          }
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Footer(),
        color: Color.fromARGB(255, 88, 185, 209),
      ),
    );
  }

  void _sortAlarmsByTime() {
    alarms.sort((a, b) {
      final timeA = _parseTimeOfDay(a.time);
      final timeB = _parseTimeOfDay(b.time);
      return _compareTimeOfDay(timeA, timeB);
    });
  }

  TimeOfDay _parseTimeOfDay(String time) {
    final parts = time.split(':');
    int hour = int.parse(parts[0]);
    int minute = int.parse(parts[1].split(' ')[0]);
    final period = parts[1].split(' ')[1].toUpperCase();

    if (period == 'PM' && hour != 12) {
      hour += 12;
    } else if (period == 'AM' && hour == 12) {
      hour = 0;
    }

    return TimeOfDay(hour: hour, minute: minute);
  }

  int _compareTimeOfDay(TimeOfDay timeA, TimeOfDay timeB) {
    if (timeA.hour < timeB.hour) {
      return -1;
    } else if (timeA.hour > timeB.hour) {
      return 1;
    } else if (timeA.minute < timeB.minute) {
      return -1;
    } else if (timeA.minute > timeB.minute) {
      return 1;
    } else {
      return 0;
    }
  }
}

class Alarm {
  final String time;
  final String label;
  final String repeatDays;
  final bool isActive;

  Alarm(this.time, this.label, this.repeatDays, this.isActive);
}

class AlarmsTile extends StatelessWidget {
  final Alarm alarm;
  final Function(bool) onToggle;
  final Function() onEdit;

  AlarmsTile({required this.alarm, required this.onToggle, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, style: BorderStyle.solid, width: 2.0),
        borderRadius: BorderRadius.circular(25),
      ),
      child: ListTile(
        title: Text(
          alarm.time,
          style: TextStyle(fontSize: 24),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(alarm.label),
            Text(alarm.repeatDays),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Switch(
              value: alarm.isActive,
              activeTrackColor: Colors.blue,
              activeColor: Color.fromARGB(255, 215, 215, 215),
              onChanged: onToggle,
            ),
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: onEdit,
            ),
          ],
        ),
      ),
    );
  }
}
