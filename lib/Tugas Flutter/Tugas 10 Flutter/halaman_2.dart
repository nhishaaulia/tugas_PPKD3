import 'package:flutter/material.dart';

class Halaman2 extends StatefulWidget {
  const Halaman2({
    super.key,
    required this.name,
    required this.email,
    this.phone,
    required this.domisili,
  });
  final String name;
  final String email;
  final String? phone;
  final String domisili;

  @override
  State<Halaman2> createState() => _Halaman2State();
}

class _Halaman2State extends State<Halaman2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Terimakasih, ${widget.name} dari ${widget.domisili} telah mendaftar",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 223, 107, 165),
            ),
          ),

          // Text(
          //   widget.email,
          //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          // ),
          // Text(
          //   widget.phone ?? "Tidak ada nomor telepon",
          //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          // ),
          // Text(
          //   widget.domisili,
          //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          // ),
        ],
      ),
    );
  }
}
