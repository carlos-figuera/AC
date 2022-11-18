class Squema {
  String create = '''
    CREATE TABLE "canchas" (
      "id"	INTEGER NOT NULL,
      "nameUser"	TEXT NOT NULL,
      "typeCancha"	TEXT NOT NULL,
      "date"	TEXT NOT NULL,
      "probavilityRain"	TEXT NOT NULL,
      PRIMARY KEY("id" AUTOINCREMENT)
    );
  ''';
}
