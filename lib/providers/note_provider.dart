import 'package:flutter/material.dart';
import '../models/note_model.dart';
import '../services/local_database.dart';

class NoteProvider with ChangeNotifier {
  List<NoteModel> _notes = [];

  List<NoteModel> get notes => _notes;

  /// Upload Notes from Hive
  void loadNotes() {
    _notes = LocalDatabase.getNotes();
    notifyListeners();
  }

  /// Add New Note
  Future<void> addNote(String title, String description) async {
    final newNote = NoteModel(title: title, description: description);
    await LocalDatabase.addNote(newNote);
    loadNotes();
  }

  /// Delete Note
  Future<void> deleteNote(int index) async {
    await LocalDatabase.deleteNote(index);
    loadNotes();
  }
}
