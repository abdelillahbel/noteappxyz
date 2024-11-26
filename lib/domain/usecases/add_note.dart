// by https://github.com/abdelillahbel
import 'package:noteappxyz/data/repositories/note_repository.dart';

import '../entities/note.dart';

class AddNoteUseCase {
  final NoteRepository repository;

  AddNoteUseCase(this.repository);

  Future<void> call(Note note) async {
    await repository.addNote(note);
  }
}
