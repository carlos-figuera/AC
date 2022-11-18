import 'dart:convert';

UnitDto unitDtoFromJson(String str) => UnitDto.fromJson(json.decode(str));

class UnitDto {
  UnitDto(
      {required this.id,
      required this.name,
      required this.code,
      required this.value,
      required this.symbol,
      required this.childrenMeasurementsUnit,
      required this.parent,
      required this.isExpanded});

  int id;
  String name;
  int value;
  String symbol;
  String code;
  bool isExpanded = false;
  List<UnitDto> childrenMeasurementsUnit;
  ParentUnit parent;

  factory UnitDto.fromJson(Map<String, dynamic> json) => UnitDto(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      value: json["value"] ?? 0,
      symbol: json["symbol"] ?? "",
      code: json["code"] ?? "",
      childrenMeasurementsUnit: json["children_measurements_unit"] == null
          ? []
          : List<UnitDto>.from(json["children_measurements_unit"]
              .map((x) => UnitDto.fromJson(x))),
      parent: json["parent"] != null
          ? ParentUnit.fromJson(json["parent"])
          : ParentUnit(id: 0, name: ""),
      isExpanded: false);
}

class ParentUnit {
  ParentUnit({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory ParentUnit.fromJson(Map<String, dynamic> json) => ParentUnit(
        id: json["id"] ?? 0,
        name: json["name"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
