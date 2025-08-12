import 'package:flutter/material.dart';
// import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%207%20Flutter/drawer_tugas.dart';
// import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%207%20Flutter/drawer_tugas.dart';
// import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%207%20Flutter/drawer_tugas.dart';
// import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%207%20Flutter/drawer_tugas.dart';

class Halamanutama extends StatefulWidget {
  const Halamanutama({super.key, this.appBar});
  final bool? appBar;

  @override
  State<Halamanutama> createState() => _HalamanutamaState();
}

class _HalamanutamaState extends State<Halamanutama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 241, 246),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              size: 80,
              color: const Color.fromARGB(255, 255, 158, 203),
            ),
            const SizedBox(height: 20),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Ini adalah halaman utama aplikasi",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
