// by https://github.com/abdelillahbel

import 'package:noteappxyz/data/repositories/note_repository.dart';
import '../../domain/entities/note.dart';

class NoteRepositoryImpl implements NoteRepository {
  final List<Note> _notes = []; // In-memory data store

  @override
  Future<void> addNote(Note note) async {
    _notes.add(note);
  }

  @override
  Future<List<Note>> getNotes() async {
    return _notes;
  }
}
