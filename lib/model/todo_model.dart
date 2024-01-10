import 'package:hive_flutter/adapters.dart';

part 'todo_model.g.dart';

@HiveType(typeId: 0)
class ToDoModel {
  @HiveField(0)
  String sarlavha;
  @HiveField(1)
  String kontent;

  ToDoModel({required this.sarlavha, required this.kontent});
}
