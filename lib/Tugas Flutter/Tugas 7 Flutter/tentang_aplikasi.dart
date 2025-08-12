import 'package:flutter/material.dart';

class TentangAplikasi extends StatefulWidget {
  const TentangAplikasi({super.key});

  @override
  State<TentangAplikasi> createState() => _TentangAplikasiState();
}

class _TentangAplikasiState extends State<TentangAplikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tentang Aplikasi")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Aplikasi Form Input Interaktif",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Deskripsi: Aplikasi ini dibuat untuk memenuhi tugas Flutter dengan fitur navigasi Drawer dan BottomNavigationBar.",
            ),
            SizedBox(height: 10),
            Text("Nama Pembuat: "),
            Text("Versi: 1.0.0"),
          ],
        ),
      ),
    );
  }
}
