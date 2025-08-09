import 'package:flutter/material.dart';

class CheckboxTugas extends StatefulWidget {
  const CheckboxTugas({super.key});

  @override
  State<CheckboxTugas> createState() => _CheckboxTugasState();
}

class _CheckboxTugasState extends State<CheckboxTugas> {
  bool isCheck = false;
  bool isCheckSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkbox"), centerTitle: false),

      //Checkbox
      body: Column(
        children: [
          Row(
            children: [
              Checkbox(
                activeColor: const Color.fromARGB(255, 255, 91, 168),
                value: isCheck,
                onChanged: (value) {
                  setState(() {
                    isCheck = value!;
                  });
                },
              ),
              Text("Saya menyetujui semua persyaratan yang berlaku"),
            ],
          ),
          Text(
            isCheck == true
                ? "Lanjutkan pendaftaran diperbolehkan"
                : "Anda belum bisa melanjutkan",
          ),

          SizedBox(height: 16),

          //Switch
          Text("Switch"),
          Row(
            children: [
              Switch(
                activeColor: const Color.fromARGB(255, 255, 91, 168),
                value: isCheckSwitch,
                onChanged: (value) {
                  setState(() {
                    isCheckSwitch = value;
                  });
                },
              ),
              Text(isCheckSwitch ? "Turn On" : "Turn Off"),
            ],
          ),

          SizedBox(height: 16),

          //Dropdown
        ],
      ),
    );
  }
}
