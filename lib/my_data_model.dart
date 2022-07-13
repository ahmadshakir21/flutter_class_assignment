import 'package:meta/meta.dart';
import 'dart:convert';

List<MyDataModel> myDataModelFromMap(String str) => List<MyDataModel>.from(json.decode(str).map((x) => MyDataModel.fromMap(x)));

class MyDataModel {
    MyDataModel({
        required this.userId,
        required this.id,
        required this.title,
        required this.body,
    });

    int userId;
    int id;
    String title;
    String body;

    factory MyDataModel.fromMap(Map<String, dynamic> json) => MyDataModel(
        userId: json["userId"] ?? 0,
        id: json["id"] ?? 0,
        title: json["title"] ?? "null",
        body: json["body"] ?? "null",
    );
}
