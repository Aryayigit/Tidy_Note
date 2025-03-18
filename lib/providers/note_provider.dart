import 'package:flutter/material.dart';
import '../models/note_model.dart';
import '../services/local_database.dart';

class NoteProvider with ChangeNotifier {
  List<NoteModel> _notes = [];

  List<NoteModel> get notes => _notes;

  /// Hive'dan Notları Yükle
  void loadNotes() {
    _notes = LocalDatabase.getNotes();
    notifyListeners();
  }

  /// Yeni Not Ekle
  Future<void> addNote(String title, String description) async {
    final newNote = NoteModel(title: title, description: description);
    await LocalDatabase.addNote(newNote);
    loadNotes(); // Notları tekrar yükle
  }

  /// Notu Sil
  Future<void> deleteNote(int index) async {
    await LocalDatabase.deleteNote(index);
    loadNotes(); // Notları tekrar yükle
  }
}
