// To parse this JSON data, do
//

import 'dart:convert';

Registration registrationFromJson(String str) => Registration.fromJson(json.decode(str));

String registrationToJson(Registration data) => json.encode(data.toJson());

class Registration {
    Registration({
        required this.data,
    });

    final Data data;

    factory Registration.fromJson(Map<String, dynamic>? json) => Registration(
        data: Data.fromJson(json!["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class Data {
    Data({
        required this.addCompany,
    });

    final AddCompany addCompany;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        addCompany: AddCompany.fromJson(json["addCompany"]),
    );

    Map<String, dynamic> toJson() => {
        "addCompany": addCompany.toJson(),
    };
}

class AddCompany {
    AddCompany({
        required this.isSuccess,
        this.message,
    });

    final bool isSuccess;
    final Message? message;

    factory AddCompany.fromJson(Map<String, dynamic> json) => AddCompany(
        isSuccess: json["isSuccess"],
        message: Message.fromJson(json["message"]),
    );

    Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "message": message!.toJson(),
    };
}

class Message {
    Message({
        this.code,
        this.message,
        this.detail,
    });

    final String? code;
    final String? message;
    final String? detail;

    factory Message.fromJson(Map<String, dynamic> json) => Message(
        code: json["code"],
        message: json["message"],
        detail: json["detail"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "detail": detail,
    };
}
