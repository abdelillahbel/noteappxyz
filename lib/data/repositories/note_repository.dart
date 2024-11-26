// by https://github.com/abdelillahbel
import '../../domain/entities/note.dart';

abstract class NoteRepository {
  Future<void> addNote(Note note);
  Future<List<Note>> getNotes();
}