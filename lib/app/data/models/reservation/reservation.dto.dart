// To parse this JSON data, do


import 'dart:convert';

ReservationDto reservationDtoFromJson(String str) => ReservationDto.fromJson(json.decode(str));

String reservationDtoToJson(ReservationDto data) => json.encode(data.toJson());

class ReservationDto {
    ReservationDto({
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



    factory ReservationDto.fromJson(Map<String, dynamic> json) => ReservationDto(
        id: json["id"]??0,
        nameUser: json["nameUser"]??"",
        typeCancha: json["typeCancha"]??0,
        date: json["date"]??"",
        probavilityRain: json["probavilityRain"]??"",

    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nameUser": nameUser,
        "typeCancha": typeCancha,
        "date": date,
        "probavilityRain": probavilityRain,



    };
}
