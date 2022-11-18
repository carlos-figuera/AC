// To parse this JSON data, do


import 'dart:convert';

TagsDto groupsDtoFromJson(String str) => TagsDto.fromJson(json.decode(str));

String groupsDtoToJson(TagsDto data) => json.encode(data.toJson());

class TagsDto {
    TagsDto({
        required this.id,
        required this.name,
        required this.createdAt,

    });

    int id;
    String name;

    String createdAt;


    factory TagsDto.fromJson(Map<String, dynamic> json) => TagsDto(
        id: json["id"]??0,
        name: json["name"]??"",
        createdAt: "",

    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,


    };
}
