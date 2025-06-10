import 'package:path/path.dart';
import 'package:ppkd_b_2/Tugas_11/barang_model.dart';
import 'package:sqflite/sqflite.dart';

class DbTugas {
  static Future<Database> initDB() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'barang.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE barang_baru(id INTEGER PRIMARY KEY AUTOINCREMENT, nama TEXT, jumlah TEXT, jenis_barang TEXT, deskripsi TEXT)',
        );
      },
      version: 2,
    );
  }

  static Future<void> insertBarang(BarangModel barang) async {
    final db = await DbTugas.initDB();
    await db.insert(
      'barang_baru',
      barang.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<BarangModel>> getAllBarang() async {
    final db = await DbTugas.initDB();
    final List<Map<String, dynamic>> listData = await db.query('barang_baru');

    return List.generate(
      listData.length,
      (index) => BarangModel.fromMap(listData[index]),
    );
  }

  static Future<void> deleteBarang(int id) async {
    final db = await DbTugas.initDB();
    await db.delete('barang_baru', where: 'id = ?', whereArgs: [id]);
    final count = Sqflite.firstIntValue(
      await db.rawQuery('SELECT COUNT(*) FROM barang'),
    );
    if (count == 0) {
      await db.execute("DELETE FROM sqlite_sequence WHERE name ='barang'");
    }
  }

  static Future<void> updateBarang(BarangModel barang) async {
    final db = await DbTugas.initDB();
    await db.update(
      'barang_baru',
      barang.toMap(),
      where: 'id = ?',
      whereArgs: [barang.id],
    );
  }
}
