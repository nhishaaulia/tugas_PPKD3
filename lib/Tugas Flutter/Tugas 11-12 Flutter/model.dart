class Produk {
  final int id;
  final String nama;
  final int harga;

  Produk({required this.id, required this.nama, required this.harga});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'nama': nama, 'harga': harga};
  }

  factory Produk.fromMap(Map<String, dynamic> map) {
    return Produk(
      id: map['id'] as int,
      nama: map['nama'] as String,
      harga: map['harga'] as int,
    );
  }
}
