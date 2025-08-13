import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ppkd_b_3/Tugas Flutter/Tugas 10 Flutter/halaman_2.dart';
import 'package:ppkd_b_3/Tugas Flutter/Tugas 10 Flutter/textform.dart';
import 'package:ppkd_b_3/extension/navigation.dart';

class Halaman1 extends StatefulWidget {
  const Halaman1({super.key});

  @override
  State<Halaman1> createState() => _halaman1State();
}

class _halaman1State extends State<Halaman1> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController domisiliController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            // spacing: 8,
            children: [
              Row(children: [Text('Nama Lengkap')]),
              TextFormConst(
                hintText: "Masukkan Nama",
                controller: nameController,
                onChanged: (p0) {
                  setState(() {});
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama tidak boleh kosong";
                  }
                  return null;
                },
              ),
              Row(children: [Text('Email')]),
              TextFormConst(
                hintText: "Masukkan Email",
                controller: emailController,
                onChanged: (p0) {
                  setState(() {});
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email tidak boleh kosong";
                  }
                  if (!value.contains('@')) return "Email tidak valid";
                  return null;
                },
              ),
              Row(children: [Text('Phone')]),
              TextFormConst(
                hintText: "Masukkan Phone",
                controller: phoneController,
                onChanged: (p0) {
                  setState(() {});
                },
              ),
              Row(children: [Text('Domisili')]),
              TextFormConst(
                hintText: "Masukkan Kota Domisili",
                controller: domisiliController,
                onChanged: (p0) {
                  setState(() {});
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Kota domisili tidak boleh kosong";
                  }
                  return null;
                },
              ),
              Text(
                emailController.text,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 223, 107, 165),
                ),
              ),
              Text(
                phoneController.text,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 223, 107, 165),
                ),
              ),
              Text(
                nameController.text,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 223, 107, 165),
                ),
              ),
              Text(
                domisiliController.text,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 223, 107, 165),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      const Color.fromARGB(255, 255, 168, 197),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Pendaftaran Berhasil"),
                                Lottie.asset(
                                  "assets/images/animations/Success.json",
                                ),
                              ],
                            ),
                            content: Text(
                              "Selamat Datang ",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // Tutup dialog
                                  context.pushReplacement(
                                    Halaman2(
                                      name: nameController.text,
                                      email: emailController.text,
                                      domisili: domisiliController.text,
                                    ),
                                  );
                                },
                                child: Text("Lanjutkan"),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Text(
                    "Daftar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 58, 58, 58),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
