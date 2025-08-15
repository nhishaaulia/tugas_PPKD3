import 'package:flutter/material.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%2010%20Flutter/textform.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%2011-12%20Flutter/db_helper.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%2011-12%20Flutter/model.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static const id = "/register";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController hargaController = TextEditingController();

  List<Produk> daftarProduk = [];

  @override
  void initState() {
    super.initState();
    muatData();
  }

  Future<void> muatData() async {
    final data = await DbHelper.getAllProduk();
    setState(() {
      daftarProduk = data;
    });
  }

  Future<void> simpanData() async {
    final id = idController.text;
    final nama = namaController.text;
    final harga = int.tryParse(hargaController.text) ?? 0;

    if (id.isNotEmpty && harga > 0) {
      await DbHelper.insertProduk(
        Produk(
          id: int.tryParse(idController.text) ?? 0,
          nama: nama,
          harga: harga,
        ),
      );
      idController.clear();
      namaController.clear();
      hargaController.clear();
      muatData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: idController,
              decoration: InputDecoration(labelText: 'ID'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: 'Nama Produk'),
            ),
            TextField(
              controller: hargaController,
              decoration: InputDecoration(labelText: 'Harga'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: simpanData,
              child: Text(
                'Simpan',
                style: TextStyle(
                  color: const Color.fromARGB(255, 228, 93, 160),
                ),
              ),
            ),
            Divider(height: 32),
            Expanded(
              child: ListView.builder(
                itemCount: daftarProduk.length,
                itemBuilder: (context, index) {
                  final produk = daftarProduk[index];

                  return ListTile(
                    title: Text(produk.nama),
                    subtitle: Text('Harga: ${produk.harga}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text(
                                  'Edit Data',
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      228,
                                      93,
                                      160,
                                    ),
                                  ),
                                ),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextFormConst(
                                      controller: idController
                                        ..text = produk.id.toString(),
                                      hintText: 'ID',
                                    ),
                                    SizedBox(height: 12),
                                    TextFormConst(
                                      controller: namaController
                                        ..text = produk.nama,
                                      hintText: 'Nama Produk',
                                    ),
                                    SizedBox(height: 12),
                                    TextFormConst(
                                      controller: hargaController
                                        ..text = produk.harga.toString(),
                                      hintText: 'Harga',
                                    ),
                                  ],
                                ),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () async {
                                      final dataProduk = Produk(
                                        id: produk.id,
                                        nama: namaController.text,
                                        harga:
                                            int.tryParse(
                                              hargaController.text,
                                            ) ??
                                            0,
                                      );
                                      await DbHelper.updateProduk(dataProduk);
                                      await muatData();
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Simpan',
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                          255,
                                          228,
                                          93,
                                          160,
                                        ),
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text(
                                      'Batal',
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                          255,
                                          228,
                                          93,
                                          160,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          icon: Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () async {
                            await DbHelper.deleteProduk(produk.id);
                            await muatData();
                          },
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
