import 'package:flutter/material.dart';

class ListofmapTugas extends StatefulWidget {
  const ListofmapTugas({super.key});

  @override
  State<ListofmapTugas> createState() => _ListofmapTugasState();
}

class _ListofmapTugasState extends State<ListofmapTugas> {
  final List<Map<String, dynamic>> produk = [
    {
      "nama": "Wedges",
      "price": 1000000,
      "warna": const Color.fromARGB(255, 255, 130, 203),
    },
    {
      "nama": "Flat Shoes",
      "price": 300000,
      "warna": const Color.fromARGB(255, 156, 220, 255),
    },
    {
      "nama": "Boots",
      "price": 700000,
      "warna": const Color.fromARGB(255, 188, 255, 170),
    },
    {
      "nama": "Slip-on Sneakers",
      "price": 400000,
      "warna": const Color.fromARGB(255, 234, 149, 255),
    },
    {
      "nama": "High Heels",
      "price": 500000,
      "warna": const Color.fromARGB(255, 255, 203, 134),
    },
    {
      "nama": "Pantofel",
      "price": 400000,
      "warna": const Color.fromARGB(255, 255, 228, 164),
    },
    {
      "nama": "Loafers",
      "price": 300000,
      "warna": const Color.fromARGB(255, 192, 191, 255),
    },
    {
      "nama": "Sepatu Basket",
      "price": 900000,
      "warna": const Color.fromARGB(255, 159, 255, 162),
    },
    {
      "nama": "Sandal Gunung",
      "price": 800000,
      "warna": const Color.fromARGB(255, 158, 208, 255),
    },
    {
      "nama": "Sandal Jepit",
      "price": 300000,
      "warna": const Color.fromARGB(255, 255, 212, 137),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("List Sepatu Sandal")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //List of Map
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),

              shrinkWrap: true,
              itemCount: produk.length,
              itemBuilder: (BuildContext context, int index) {
                final dataProduk = produk[index];
                return ListTile(
                  title: Text(dataProduk["nama"]),
                  subtitle: Text(dataProduk["price"].toString()),
                  trailing: CircleAvatar(backgroundColor: dataProduk["warna"]),
                  leading: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 255, 176, 235),
                    child: Text("${index + 1}"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
