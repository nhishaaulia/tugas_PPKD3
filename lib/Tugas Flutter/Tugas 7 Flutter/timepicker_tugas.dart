import 'package:flutter/material.dart';

class TimePickerTugas extends StatefulWidget {
  const TimePickerTugas({super.key});

  @override
  State<TimePickerTugas> createState() => _TimePickerTugasState();
}

class _TimePickerTugasState extends State<TimePickerTugas> {
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Time Picker")),
      // drawer: DrawerTugas(),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),

          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  TimeOfDay? time = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (time != null) {
                    setState(() {
                      selectedTime = time;
                    });
                  }
                },
                child: Text("Pilih Waktu Pengingat"),
              ),
              SizedBox(height: 20),
              Text(
                selectedTime == null
                    ? "Belum memilih waktu"
                    : "Pengingat diatur pukul: ${selectedTime!.format(context)}",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
