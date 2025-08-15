// import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/Tugas%2011-12%20Flutter/model.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Future<Database> databaseHelper() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'produk.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE produk(id INTEGER PRIMARY KEY, nama TEXT, harga INTEGER)',
        );
      },
      version: 1,
    );
  }

  static Future<void> insertProduk(Produk produk) async {
    final db = await databaseHelper();
    await db.insert(
      'produk',
      produk.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Produk>> getAllProduk() async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> maps = await db.query('produk');
    return List.generate(maps.length, (i) => Produk.fromMap(maps[i]));
  }

  static Future<void> updateProduk(Produk produk) async {
    final db = await databaseHelper();
    await db.update(
      'produk',
      produk.toMap(),
      where: 'id = ?',
      whereArgs: [produk.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<void> deleteProduk(int id) async {
    final db = await databaseHelper();
    await db.delete('produk', where: 'id = ?', whereArgs: [id]);
  }
}
