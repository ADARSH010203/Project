import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/AlamScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class SetAlarmsScreen extends StatefulWidget {
  final Alarm? existingAlarm;

  const SetAlarmsScreen({super.key, this.existingAlarm});

  @override
  State<SetAlarmsScreen> createState() => _SetAlarmsScreenState();
}

class _SetAlarmsScreenState extends State<SetAlarmsScreen> {
  late TimeOfDay selectedTime;
  late TextEditingController labelController;
  late List<bool> repeatDays;
  String ringtone = "Early on morning";

  @override
  void initState() {
    super.initState();
    if (widget.existingAlarm != null) {
      selectedTime = _parseTimeOfDay(widget.existingAlarm!.time);
      labelController = TextEditingController(text: widget.existingAlarm!.label);
      repeatDays = _parseRepeatDays(widget.existingAlarm!.repeatDays);
    } else {
      selectedTime = const TimeOfDay(hour: 7, minute: 30);
      labelController = TextEditingController(text: "Wake Up!");
      repeatDays = [false, false, false, false, false, false, false];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Alarm', style: GoogleFonts.istokWeb(fontSize: 24)),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: _pickTime,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    selectedTime.format(context),
                    style: GoogleFonts.istokWeb(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 1, 4, 10),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: labelController,
              decoration: InputDecoration(
                labelText: 'Label',
                labelStyle: GoogleFonts.istokWeb(fontSize: 20, color: Colors.blueGrey),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
              ),
              style: GoogleFonts.istokWeb(fontSize: 22),
            ),
            const SizedBox(height: 30),
            Text('Repeat', style: GoogleFonts.istokWeb(fontSize: 20, color: Colors.blueGrey)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(7, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      repeatDays[index] = !repeatDays[index];
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: repeatDays[index] ? Colors.blueAccent : Colors.grey[300],
                    radius: 22,
                    child: Text(
                      _getDayLabel(index),
                      style: GoogleFonts.istokWeb(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: repeatDays[index] ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 30),
            Text('Ringtones', style: GoogleFonts.istokWeb(fontSize: 20, color: Colors.blueGrey)),
            ListTile(
              title: Text(ringtone, style: GoogleFonts.istokWeb(fontSize: 18)),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.blueAccent),
              onTap: () {
                // Handle ringtone selection
              },
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  final newAlarm = Alarm(
                    selectedTime.format(context),
                    labelController.text,
                    _getRepeatDaysLabel(),
                    true,
                  );
                  Navigator.pop(context, newAlarm);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Save',
                  style: GoogleFonts.istokWeb(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  String _getDayLabel(int index) {
    const days = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
    return days[index];
  }

  String _getRepeatDaysLabel() {
    const fullDays = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
    List<String> activeDays = [];
    for (int i = 0; i < repeatDays.length; i++) {
      if (repeatDays[i]) activeDays.add(fullDays[i]);
    }
    return activeDays.join(', ');
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

  List<bool> _parseRepeatDays(String repeatDays) {
    const fullDays = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
    List<bool> daysActive = List.generate(7, (index) => false);

    if (repeatDays.isNotEmpty) {
      List<String> activeDays = repeatDays.split(', ');
      for (var day in activeDays) {
        int index = fullDays.indexOf(day);
        if (index != -1) {
          daysActive[index] = true;
        }
      }
    }

    return daysActive;
  }
}
