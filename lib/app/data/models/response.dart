
import 'dart:convert';

ResponseApi responseApiFromJson(String str) =>
    ResponseApi.fromJson(json.decode(str));

String responseApiToJson(ResponseApi data) => json.encode(data.toJson());

class ResponseApi {
  ResponseApi({
    required this.isSuccess,
    required this.message,
    required this.data,
  });

  bool isSuccess;
  Message message;
  Data data;

  factory ResponseApi.fromJson(Map<String, dynamic> json) {
    final res = ResponseApi(
      isSuccess: json["isSuccess"],
      message: (json["isSuccess"] == false) ? Message.fromJson(json["message"]) :Message(code:"", detail: "" , message: ""   ),
      data: json["data"] == null  ? Data( id: 0  ):   Data.fromJson(json["data"]) ,

    );
    
    return res;
  }

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "message": message.toJson(),
      };
}

class Message {
  Message({
    required this.code,
    required this.message,
    required this.detail,
  });

  String  code;
  String  message;
  String  detail;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        code: json["code"]??"",
        message: json["message"]??"",
        detail: json["detail"]??"",
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "detail": detail,
      };
}
class Data {
  Data({
    required this.id,

  });

  int  id;


  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"]??0,

  );

  Map<String, dynamic> toJson() => {
    "id": id,

  };
}
