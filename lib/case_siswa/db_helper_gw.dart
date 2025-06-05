import 'package:path/path.dart';
import 'package:ppkd_b_2/case_siswa/model/siswa_model.dart';
import 'package:sqflite/sqflite.dart';

class DbHelperGw {
  static Future<Database> initDB() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      version: 2,
      join(dbPath, 'siswa.db'),
      onUpgrade: (db, oldVersion, newVersion) {
        return db.execute(
          "CREATE TABLE siswi(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, umur TEXT)",
        );
      },
      onCreate: (dbPath, version) {
        return dbPath.execute(
          "CREATE TABLE siswa(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, umur TEXT)",
        );
      },
    );
  }

  static Future<void> insertSiswa({SiswaModel? data}) async {
    final db = await DbHelperGw.initDB();

    if (data != null) {
      await db.insert(
        'siswi',
        data.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      ('User registered successfully');
    }
  }

  static Future<List<SiswaModel>> getAllSiswa() async {
    final db = await DbHelperGw.initDB();
    final List<Map<String, dynamic>> maps = await db.query('siswi');
    return List.generate(maps.length, (i) => SiswaModel.fromMap(maps[i]));
  }
}
