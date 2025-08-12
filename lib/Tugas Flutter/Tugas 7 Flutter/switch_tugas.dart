import 'package:flutter/material.dart';

class SwitchTugas extends StatefulWidget {
  const SwitchTugas({super.key});

  @override
  State<SwitchTugas> createState() => _SwitchTugasState();
}

class _SwitchTugasState extends State<SwitchTugas> {
  bool isCheckSwitch = false;
  String? dropdownSelect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Switch"), centerTitle: true),

      // drawer: const DrawerTugas(),
      body: Container(
        color: isCheckSwitch == false ? Colors.white : Colors.black,
        child: Column(
          children: [
            Text(
              "Mode Gelap/Terang",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: isCheckSwitch == true ? Colors.white : Colors.black,
              ),
            ),

            Text(
              isCheckSwitch == false
                  ? "Aktifkan Mode Gelap"
                  : "Mode Gelap Aktif",
              style: TextStyle(
                color: isCheckSwitch == true ? Colors.white : Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Text("Data"),
                Switch(
                  activeColor: Colors.blue,
                  value: isCheckSwitch,
                  onChanged: (value) {
                    setState(() {
                      isCheckSwitch = value;
                    });
                  },
                ),
                Text(
                  isCheckSwitch == true ? "Hidup" : "Tidak Hidup",
                  style: TextStyle(
                    color: isCheckSwitch == true ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
