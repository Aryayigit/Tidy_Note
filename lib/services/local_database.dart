import 'package:hive/hive.dart';
import '../models/note_model.dart';

class LocalDatabase {
  static const String _boxName = "notesBox";

  /// Start Hive
  static Future<void> initHive() async {
    Hive.registerAdapter(NoteModelAdapter());
    await Hive.openBox<NoteModel>(_boxName);
  }

  /// Add New Note
  static Future<void> addNote(NoteModel note) async {
    var box = Hive.box<NoteModel>(_boxName);
    await box.add(note);
  }

  /// Get All Notes
  static List<NoteModel> getNotes() {
    var box = Hive.box<NoteModel>(_boxName);
    return box.values.toList();
  }

  /// Delete Note
  static Future<void> deleteNote(int index) async {
    var box = Hive.box<NoteModel>(_boxName);
    await box.deleteAt(index);
  }
}
