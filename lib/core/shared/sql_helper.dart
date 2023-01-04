import 'package:notely/core/util/constants/string_manger.dart';
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart';

class SqlHelper {

  static Database? _db;
  Future<Database?> get db async {
    if (_db == null) {
      _db = await initDatabase(StringManger.databaseName);
      return _db;
    } else {
      return _db;
    }
  }

  initDatabase(String databaseName) async {
    var databasesPath = await getDatabasesPath();
    String getDatabasePath = path.join(databasesPath, databaseName);
    Database notesDatabase =
        await openDatabase(getDatabasePath, onCreate: _onCreate);
    return notesDatabase;
  }

  _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE "notes"(
      "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      "title" TEXT NOT NULL,
      "description" TEXT NOT  NULL,
      "createdAt" TIMESTAMP NOTNULL DEFAULT CURRENT_TIMESTAMP,
      "isPinned" INTEGER DEFAULT 0,
    )
    ''');
    print('created');
  }

  Future<List<Map>> selectFromDatabase(String sql) async{
    Database? mynotesdb = await db;
    List<Map> databaseResponse = await mynotesdb!.rawQuery(sql);
    return databaseResponse;
  }
  Future<int> insertIntoDatabase(String sql) async{
    Database? mynotesdb = await db;
    int databaseResponse = await mynotesdb!.rawInsert(sql);
    return databaseResponse;
  }
  Future<int> updateDatabase(String sql) async{
    Database? mynotesdb = await db;
    int databaseResponse = await mynotesdb!.rawUpdate(sql);
    return databaseResponse;
  }
  Future<int> deleteFromDatabase(String sql) async{
    Database? mynotesdb = await db;
    int databaseResponse = await mynotesdb!.rawDelete(sql);
    return databaseResponse;
  }
}
