// To parse this JSON data, do
//
//     final regions = regionsFromJson(jsonString);

import 'dart:convert';

Regions regionsFromJson(String str) => Regions.fromJson(json.decode(str));

String regionsToJson(Regions data) => json.encode(data.toJson());

class Regions {
    Regions({
        required this.id,
        this.idParent,
        required this.name,
        required this.type,
    });

    final String id;
    final String? idParent;
    final String name;
    final String type;

    factory Regions.fromJson(Map<String, dynamic> json) => Regions(
        id: json["id"],
        idParent: json["idParent"],
        name: json["name"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "idParent": idParent,
        "name": name,
        "type": type,
    };
}
