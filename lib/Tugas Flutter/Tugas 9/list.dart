import 'package:flutter/material.dart';

class ListTugas extends StatefulWidget {
  const ListTugas({super.key});

  @override
  State<ListTugas> createState() => _ListTugasState();
}

class _ListTugasState extends State<ListTugas> {
  //Step 1
  final List<String> sepatuSandal = [
    "Wedges",
    "Flat Shoes",
    "Boots",
    "Slip-on Sneakers",
    "High Heels",
    "Pantofel",
    "Loafers",
    "Sepatu Basket",
    "Sandal Gunung",
    "Sandal Jepit",
  ];
  // final List<Map<String, dynamic>> produk = [
  //   {"nama": "Wedges", "price": 1000000, "warna": Colors.blue},
  //   {"nama": "Flat Shoes", "price": 300000, "warna": Colors.red},
  //   {"nama": "Boots", "price": 700000, "warna": Colors.yellow},
  //   {"nama": "Slip-on Sneakers", "price": 400000, "warna": Colors.green},
  //   {"nama": "High Heels", "price": 500000, "warna": Colors.green},
  //   {"nama": "Pantofel", "price": 400000, "warna": Colors.green},
  //   {"nama": "Loafers", "price": 300000, "warna": Colors.green},
  //   {"nama": "Sepatu Basket", "price": 900000, "warna": Colors.green},
  //   {"nama": "Sandal Gunung", "price": 800000, "warna": Colors.green},
  //   {"nama": "Sandal Jepit", "price": 300000, "warna": Colors.green},
  // ];
  // final List<ProdukModel> produkModel = [
  //   ProdukModel(nama: "Wedges", price: 1000000, "warna": Colors.indigoAccent},
  //   ProdukModel(nama: "Flat Shoes", price: 300000, "warna": Colors.indigoAccent},
  //   ProdukModel(nama: "Boots", price: 700000, "warna": Colors.indigoAccent},
  //   ProdukModel(nama: "Slip-on Sneakers", price: 400000, "warna": Colors.indigoAccent},
  //   ProdukModel(nama: "High Heels", price: 500000, warna: Colors.indigoAccent),
  //   ProdukModel(nama: "Pantofel", price: 400000, warna: Colors.indigoAccent),
  //   ProdukModel(nama: "Loafers", price: 300000, warna: Colors.indigoAccent),
  //   ProdukModel(nama: "Sepatu Basket", price: 900000, warna: Colors.indigoAccent),
  //   ProdukModel(nama: "Sandal Gunung", price: 800000, warna: Colors.indigoAccent),
  //   ProdukModel(nama: "Sandal Jepit", price: 300000, warna: Colors.indigoAccent),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("List Sepatu Sandal")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //List
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),

              shrinkWrap: true,
              itemCount: sepatuSandal.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(sepatuSandal[index]),
                  leading: CircleAvatar(child: Text("${index + 1}")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
