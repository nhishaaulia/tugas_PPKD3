import 'package:flutter/material.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%207%20Flutter/checkbox_tugas.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/tugas_2.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/tugas_3.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/tugas_4.dart';
import 'package:ppkd_b_3/extension/navigation.dart';

class DrawerTugas extends StatefulWidget {
  const DrawerTugas({super.key});

  @override
  State<DrawerTugas> createState() => _DrawerTugasState();
}

class _DrawerTugasState extends State<DrawerTugas> {
  int _selectedIndexDrawer = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    CheckboxTugas(),
    Tugas4(),
    Tugas2(),
    Tugas3(),
  ];
  void onItemTap(int index) {
    setState(() {
      _selectedIndexDrawer = index;
    });
    context.pop();
  }

  String selectedPage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndexDrawer]),
      appBar: AppBar(title: Text("Tugas 7 Flutter")),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Checkbox"),
              onTap: () {
                onItemTap(0);
              },
            ),

            ListTile(
              title: Text("Switch"),
              onTap: () {
                onItemTap(1);
              },
            ),
            ListTile(
              title: Text("Dropdown"),
              onTap: () {
                onItemTap(2);
              },
            ),
            ListTile(
              title: Text("Date Picker"),
              onTap: () {
                onItemTap(3);
              },
            ),
            ListTile(
              title: Text("Time Picker"),
              onTap: () {
                onItemTap(4);
              },
            ),
          ],
        ),
      ),
    );
  }
}
