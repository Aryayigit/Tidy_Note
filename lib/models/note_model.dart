import 'package:hive/hive.dart';

part 'note_model.g.dart'; // Bu dosya, kod üretimi için gerekli

@HiveType(typeId: 0) // Hive'a modelimizi tanıtıyoruz
class NoteModel {
  @HiveField(0)
  String title;

  @HiveField(1)
  String description;

  NoteModel({required this.title, required this.description});
}
