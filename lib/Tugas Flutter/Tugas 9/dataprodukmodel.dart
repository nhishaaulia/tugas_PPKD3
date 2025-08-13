import 'package:flutter/material.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%209/produk_model.dart';

class Dataprodukmodel extends StatefulWidget {
  const Dataprodukmodel({super.key});

  @override
  State<Dataprodukmodel> createState() => _DataprodukmodelState();
}

class _DataprodukmodelState extends State<Dataprodukmodel> {
  final List<ProdukModel> produkModel = [
    ProdukModel(nama: "Wedges", price: 1000000, warna: Colors.indigoAccent),
    ProdukModel(nama: "Flat Shoes", price: 300000, warna: Colors.indigoAccent),
    ProdukModel(nama: "Boots", price: 700000, warna: Colors.indigoAccent),
    ProdukModel(
      nama: "Slip-on Sneakers",
      price: 400000,
      warna: Colors.indigoAccent,
    ),
    ProdukModel(nama: "High Heels", price: 500000, warna: Colors.indigoAccent),
    ProdukModel(nama: "Pantofel", price: 400000, warna: Colors.indigoAccent),
    ProdukModel(nama: "Loafers", price: 300000, warna: Colors.indigoAccent),
    ProdukModel(
      nama: "Sepatu Basket",
      price: 900000,
      warna: Colors.indigoAccent,
    ),
    ProdukModel(
      nama: "Sandal Gunung",
      price: 800000,
      warna: Colors.indigoAccent,
    ),
    ProdukModel(
      nama: "Sandal Jepit",
      price: 300000,
      warna: Colors.indigoAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("List Sepatu Sandal")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Model
            // Divider(),
            // SizedBox(height: 10),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            //   child: ListView.builder(
            //     physics: NeverScrollableScrollPhysics(),
            //     shrinkWrap: true,
            //     itemCount: produkModel.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       final Dataprodukmodel = produkModel[index];
            //       return Card(
            //         child: ListTile(
            //           title: Text(Dataprodukmodel.nama),
            //           subtitle: Text(Dataprodukmodel.price.toString()),
            //           leading: Color(Dataprodukmodel.warna),
            //         ),
            //       );
            //     },
            //   ),
            Divider(),

            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: produkModel.length,
              itemBuilder: (BuildContext context, int index) {
                final dataProdukModel = produkModel[index];
                return Card(
                  child: ListTile(
                    title: Text(dataProdukModel.nama),
                    subtitle: Text(dataProdukModel.price.toString()),
                    trailing: CircleAvatar(
                      backgroundColor: dataProdukModel.warna,
                    ),
                    leading: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 255, 182, 224),
                      child: Text("${index + 1}"),
                    ),
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
