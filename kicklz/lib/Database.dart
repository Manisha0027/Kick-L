import 'dart:io' as io;
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';


class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();
}
Database _database;

  Future<Database> get database async {
    if (_database != null)
    return _database;

    // if _database is null we instantiate it
    _database = await initDB();
    return _database;
}

initDB() async{
   io.Directory documentDirectory = await getApplicationDocumentsDirectory();
   String path = join(documentDirectory.path, "DB_NAME");
   var db = await openDatabase(path, version: 1, onCreate: _onCreate);
   return db;
}

_onCreate(Database db, int version) async{
  await db.execute("fGCDF");
}