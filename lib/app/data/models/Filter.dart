

import 'dart:convert';
Filter filterFromJson(String str) => Filter.fromJson(json.decode(str));
String filterToJson(Filter data) => json.encode(data.toJson());

class Filter {
    Filter({
     this.name,
   required  this.id,
      required  this.type,
    });
    String type;
    String ?name;
    int ?id;

    factory Filter.fromJson(Map<String, dynamic> json) => Filter(
        name: json["name"],
        id: json["id"],
      type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
    };
}
