import 'package:hive/hive.dart';
import '../models/note_model.dart';

class LocalDatabase {
  static const String _boxName = "notesBox";

  /// Hive'ı Başlat
  static Future<void> initHive() async {
    Hive.registerAdapter(NoteModelAdapter());
    await Hive.openBox<NoteModel>(_boxName);
  }

  /// Yeni Not Ekle
  static Future<void> addNote(NoteModel note) async {
    var box = Hive.box<NoteModel>(_boxName);
    await box.add(note);
  }

  /// Tüm Notları Getir
  static List<NoteModel> getNotes() {
    var box = Hive.box<NoteModel>(_boxName);
    return box.values.toList();
  }

  /// Notu Sil
  static Future<void> deleteNote(int index) async {
    var box = Hive.box<NoteModel>(_boxName);
    await box.deleteAt(index);
  }
}
