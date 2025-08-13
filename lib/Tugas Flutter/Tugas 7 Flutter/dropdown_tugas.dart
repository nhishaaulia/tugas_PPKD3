import 'package:flutter/material.dart';

class DropdownTugas extends StatefulWidget {
  const DropdownTugas({super.key});

  @override
  State<DropdownTugas> createState() => _DropdownTugasState();
}

class _DropdownTugasState extends State<DropdownTugas> {
  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Dropdown"), centerTitle: true),

      // drawer: const DrawerTugas(),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                hint: Text("Pilih Kategori Produk"),
                value: selectedCategory,
                items: ["Elektronik", "Pakaian", "Makanan", "Lainnya"]
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Text(
                selectedCategory == null
                    ? "Anda belum memilih kategori"
                    : "Anda memilih kategori: $selectedCategory",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
