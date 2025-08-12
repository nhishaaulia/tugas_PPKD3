import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MenuDatePicker extends StatefulWidget {
  const MenuDatePicker({super.key});

  @override
  State<MenuDatePicker> createState() => _DatePickerTugasState();
}

class _DatePickerTugasState extends State<MenuDatePicker> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Date Picker")),
      // drawer: DrawerTugas(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              DateTime? date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime(2100),
              );
              if (date != null) {
                setState(() {
                  selectedDate = date;
                });
              }
            },
            child: Text("Pilih Tanggal Lahir"),
          ),
          SizedBox(height: 20),
          Text(
            selectedDate == null
                ? "Belum memilih tanggal"
                : "Tanggal Lahir: ${DateFormat('d MMMM yyyy').format(selectedDate!)}",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
