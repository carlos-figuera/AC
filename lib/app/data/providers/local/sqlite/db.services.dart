import 'dart:io';
import 'package:app_hazconta/app/data/providers/local/sqlite/shema.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbDataSource {
  // Llamo la clase donde esta la base de datos
  Squema schema = Squema();

  /// Inicializo y creo la base de datos
  Future<Database> init() async {
    // Path de donde almacenaremos la base de Datos
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'acexpress.db');
    // crear base de Datos
    Database db = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        try {
          await db.execute(schema.create);
        } catch (e) {
          print('👻👻👻👻👻');
          print(e);
          print('👻👻👻👻👻');
        }
      },
    );
    return db;
  }
}
