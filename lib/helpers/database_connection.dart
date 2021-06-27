import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseConnection {
  setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'project_uas');
    var database = await openDatabase(path, version: 1, onCreate: createDatabase);
    return database;
  }
}

void createDatabase(Database database, int version) async {
  await database.execute("CREATE TABLE activity(id INTEGER PRIMARY KEY AUTOINCREMENT, nama String, deskripsi TEXT)");
}
