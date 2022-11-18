class ReservationDti {
  ReservationDti({
    required this.id,
    required this.nameUser,
    required this.typeCancha,
    required this.date,
    required this.probavilityRain,
  });

  int id;
  String nameUser;
  String typeCancha;
  String date;
  String probavilityRain;


  Map<String, dynamic> toMapForDb() {
    return <String, dynamic>{
      'nameUser': nameUser,
      'typeCancha': typeCancha,
      'date': date,
      'probavilityRain': probavilityRain,
    };
  }

  ReservationDti.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        nameUser = map['nameUser'],
        typeCancha = map['typeCancha'],
        date = map['date'],
        probavilityRain = map['probavilityRain'];
}
