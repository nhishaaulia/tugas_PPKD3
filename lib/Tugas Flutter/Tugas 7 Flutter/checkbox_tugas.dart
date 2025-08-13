import 'package:flutter/material.dart';
// import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%207%20Flutter/drawer_tugas.dart';

class CheckboxTugas extends StatefulWidget {
  const CheckboxTugas({super.key});

  @override
  State<CheckboxTugas> createState() => _CheckboxTugasState();
}

class _CheckboxTugasState extends State<CheckboxTugas> {
  bool isCheck = false;
  final String data =
      "Syarat & Ketentuan\n"
      "Dengan menggunakan aplikasi ini, Anda menyetujui bahwa semua data yang Anda berikan adalah benar dan bertanggung jawab penuh atas penggunaannya.\n"
      "Kami tidak bertanggung jawab atas kerugian yang timbul akibat penggunaan aplikasi ini.\n"
      "Aplikasi ini hanya untuk keperluan pribadi dan bukan untuk tujuan komersial tanpa izin.\n"
      "Kami berhak mengubah syarat dan ketentuan sewaktu-waktu tanpa pemberitahuan terlebih dahulu.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Checkbox"),
      //   centerTitle: true,
      //   // backgroundColor: const Color.fromARGB(255, 255, 120, 179),
      // ),

      // drawer: DrawerTugas(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(12),
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 238, 248),
            ),
            child: Text(data, textAlign: TextAlign.justify),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
        ],
      ),
    );
  }
}
