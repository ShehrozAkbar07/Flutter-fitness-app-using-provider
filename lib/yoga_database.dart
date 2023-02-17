import 'package:fitnessapp/model/model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class YogaDatabase {
  static final YogaDatabase instance = YogaDatabase._init();
  static Database? _database;
  YogaDatabase._init();

  Future<Database> _initializeDB(String filepath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filepath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDatabase
    );
  }
  Future <Database? > get database async{
    if(_database!= null)
    return _database;
    _database = await _initializeDB("YogaStepsDB.db");
    return _database;
  }

  Future _createDatabase(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = "TEXT NOT NULL";
    final boolType = "BOOL NOT NULL";
    //  id, bool(seconds) text

    await db.execute(''' CREATE TABLE Begineer Yoga{
      ${yogaModel.IDName} $idType,
      ${yogaModel.YogaName} $textType,
      ${yogaModel.ImageName} $textType,
      ${yogaModel.SecondsorNot} $boolType,

      
      
      
      }

      }''');
  }
}
