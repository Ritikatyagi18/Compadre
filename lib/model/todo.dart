import 'package:flutter/cupertino.dart';
import 'package:compadre_todo/utils.dart';

class TodoField {
  static const createdTime = 'createdTime';
}

class Todo {

  DateTime createdTime;
  String title;
  String id;
  String description;
  String matrix;
  bool isDone;

  Todo({
    required this.createdTime,
    required this.title,
    required this.matrix,
    this.description = '',
    this.id='',
    this.isDone = false,
  });

  static Todo fromJson(Map<String, dynamic> json) => Todo(
    createdTime: Utils.toDateTime(json['createdTime']),
    title: json['title'],
    matrix: json['matrix'],
    description: json['description'],
    id: json['id'],
    isDone: json['isDone'],
  );

  Map<String, dynamic> toJson() => {
    'createdTime': Utils.fromDateTimeToJson(createdTime),
    'title': title,
    'matrix': matrix,
    'description': description,
    'id': id,
    'isDone': isDone,
  };
}
