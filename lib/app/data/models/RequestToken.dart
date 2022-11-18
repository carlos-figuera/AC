// To parse this JSON data, do
//
//     final requestToken = requestTokenFromJson(jsonString);


import 'dart:convert';

RequestToken requestTokenFromJson(String str) => RequestToken.fromJson(json.decode(str));

String requestTokenToJson(RequestToken data) => json.encode(data.toJson());

class RequestToken {
    RequestToken({
        this.accessToken,
        this.statusCode,
        this.message,
    });

    final String? accessToken;
    final int? statusCode;
    final String? message;

    factory RequestToken.fromJson(Map<String, dynamic> json) => RequestToken(
        accessToken: json["access_token"],
        statusCode: json["statusCode"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "statusCode": statusCode,
        "message": message,
    };
}
