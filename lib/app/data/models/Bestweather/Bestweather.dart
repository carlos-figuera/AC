// To parse this JSON data, do
//
//     final bestweather = bestweatherFromJson(jsonString);

import 'dart:convert';

Bestweather bestweatherFromJson(String str) => Bestweather.fromJson(json.decode(str));

String bestweatherToJson(Bestweather data) => json.encode(data.toJson());

class Bestweather {
  Bestweather({
  required  this.datetime,
    required  this.datetime1,
  required  this.dew,
  required  this.humidity,
  required  this.precip,
  required  this.precipprob,
  });

  String datetime;
  DateTime datetime1;
  double dew;
  double humidity;
  double precip;
  String precipprob;

  factory Bestweather.fromJson(Map<String, dynamic> json) => Bestweather(
    datetime1: DateTime.parse(json["datetime"]),
    datetime: json["datetime"],
    dew: json["dew"].toDouble(),
    humidity: json["humidity"].toDouble(),
    precip: json["precip"].toDouble(),
    precipprob: json["precipprob"].toString(),
  );

  Map<String, dynamic> toJson() => {
  //  "datetime": "${datetime.year.toString().padLeft(4, '0')}-${datetime.month.toString().padLeft(2, '0')}-${datetime.day.toString().padLeft(2, '0')}",
    "dew": dew,
    "humidity": humidity,
    "precip": precip,
    "precipprob": precipprob,
  };
}
