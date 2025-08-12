import 'package:flutter/material.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%207%20Flutter/checkbox_tugas.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%207%20Flutter/datepicker_tugas.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%207%20Flutter/dropdown_tugas.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%207%20Flutter/halamanutama.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%207%20Flutter/switch_tugas.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%207%20Flutter/timepicker_tugas.dart';
import 'package:ppkd_b_3/extension/navigation.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  int _selectedIndexDrawer = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Halamanutama(appBar: false),
    CheckboxTugas(),
    SwitchTugas(),
    DropdownTugas(),
    MenuDatePicker(),
    TimePickerTugas(),
  ];
  static const List<String> _title = [
    "Dashboard",
    "Syarat & Ketentuan",
    "Switch",
    "DropDown",
    "Date Picker",
    "Time Picker",
  ];
  void onItemTap(int index) {
    setState(() {
      _selectedIndexDrawer = index;
    });
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndexDrawer]),
      appBar: AppBar(
        centerTitle: true,
        title: Text(_title[_selectedIndexDrawer]),
        backgroundColor: const Color.fromARGB(255, 255, 198, 217),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 206, 223),
              ),
              child: Text(
                "Menu",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.check_box),
              title: Text("Dashboard"),
              onTap: () {
                onItemTap(0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.check_box),
              title: Text("Checkbox"),
              onTap: () {
                onItemTap(1);
              },
            ),

            ListTile(
              leading: const Icon(Icons.brightness_6),
              title: Text("Switch"),
              onTap: () {
                onItemTap(2);
              },
            ),

            // onItemTap(1);
            ListTile(
              leading: const Icon(Icons.arrow_drop_down_circle),
              title: Text("Dropdown"),
              onTap: () {
                onItemTap(3);
                // onItemTap(2);
              },
            ),
            ListTile(
              leading: const Icon(Icons.date_range),
              title: Text("Date Picker"),
              onTap: () {
                onItemTap(4);
              },
            ),
            ListTile(
              leading: const Icon(Icons.timelapse_sharp),
              title: Text("Time Picker"),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const SwitchTugas()),
                // );
                onItemTap(5);
              },
            ),
          ],
        ),
      ),
    );
  }
}
