

import 'package:sqflite/sqflite.dart';
 import '../../../../models/reservation/reservation.search.dti.dart';
import '../db.services.dart';

class CanchasSQLite {
  // Servicio para obtener el usuario logeado
 // final LocalUser _localUser = Get.find<LocalUser>();
  // Servicio para obtener la empresa con la que esta logeado

  // obtengo los servicios de coneccion a la base de datos
  final DbDataSource _dbSQlite = DbDataSource();
  // Coloco el nombre de la tabla
  final String table = 'canchas';

  /// Agrego el una nuevas reservacion
  Future<int> addReservationSQLite({
    required ReservationDti item,
  }) async {
    // conecto la base de datos
    Database db = await _dbSQlite.init();
    final res = await db.insert(
      table,
      item.toMapForDb(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return res;
  }

  /// Elimino una reservacion de  la base de  datos
  Future<int> deleteReservationSQLite(
      {required ReservationDti item}) async {
    // conecto la base de datos
    Database db = await _dbSQlite.init();
    return db.delete(table, where: 'id=${item.id}');
  }

  /// Obtiene todo el historial de busqueda del usuario
  /// relacionado a los grupos de articulos
  Future<List<ReservationDti>> getReservationSearchSQLite() async {
    // Obtengo la empresa con la que estoy registrado

    // obtengo el usuario que esta registrado
   // final usuario = await _localUser.getUser();
    // conecto la base de datos
    Database db = await _dbSQlite.init();
    // estructuro la consulta
    String sql = """
    SELECT 
    *
    FROM $table
    """;
    // hago la consulta a la base
    final result = await db.rawQuery(sql);
    print(result.length);
    // devuelvo todos los resultados
    return result.map((e) => ReservationDti.fromMap(e)).toList();
  }

  Future<List<ReservationDti>> getReservationCoutCancha({required String date, required String typeCancha}) async {
    // Obtengo la empresa con la que estoy registrado

    // obtengo el usuario que esta registrado
    // final usuario = await _localUser.getUser();
    // conecto la base de datos
    Database db = await _dbSQlite.init();
    // estructuro la consulta
    String sql = """
    SELECT * FROM canchas WHERE typeCancha == CANCHA_A AND date == 2022-11-18
    """;

    // hago la consulta a la base
    final result = await db.rawQuery('SELECT * FROM canchas WHERE typeCancha=? AND date=?', ['$typeCancha','$date']);
    print(result.length);
    // devuelvo todos los resultados
    return result.map((e) => ReservationDti.fromMap(e)).toList();
  }

  /// Obtiene todo el historial de busqueda del usuario
  /// relacionado a los grupos de articulos
 /* Future<List<ReservationDti>> getReservationSearchSQLite() async {
    // Obtengo la empresa con la que estoy registrado

    // obtengo el usuario que esta registrado
    final usuario = await _localUser.getUser();
    // conecto la base de datos
    Database db = await _dbSQlite.init();
    // estructuro la consulta
    String sql = """
    SELECT
    *
    FROM $table
    WHERE idCompanies=  AND
    user="$usuario"
    """;
    // hago la consulta a la base
    final result = await db.rawQuery(sql);
    // devuelvo todos los resultados
    return result.map((e) => ReservationDti.fromMap(e)).toList();
  }*/
}
