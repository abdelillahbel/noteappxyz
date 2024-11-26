// by https://github.com/abdelillahbel
import 'package:flutter/material.dart';
import 'app.dart';
import 'data/repositories/note_repository_impl.dart';
import 'domain/usecases/add_note.dart';

// Initialize the repository and use case
final noteRepository = NoteRepositoryImpl();
final addNoteUseCase = AddNoteUseCase(noteRepository);

void main() {
  runApp(MyApp(addNoteUseCase: addNoteUseCase));
}
