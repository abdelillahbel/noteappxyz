// by https://github.com/abdelillahbel
import 'package:flutter/material.dart';
import '../../domain/entities/note.dart';
import '../../domain/usecases/add_note.dart';

class NoteListScreen extends StatefulWidget {
  final AddNoteUseCase addNoteUseCase;
  final VoidCallback onToggleTheme;

  const NoteListScreen({
    super.key,
    required this.addNoteUseCase,
    required this.onToggleTheme,
  });

  @override
  _NoteListScreenState createState() => _NoteListScreenState();
}

class _NoteListScreenState extends State<NoteListScreen> {
  List<Note> _notes = [];

  Future<void> _addNote() async {
    final note = Note(
      id: DateTime.now().toString(),
      title: 'Note ${_notes.length + 1}',
      content: 'This is the content of note ${_notes.length + 1}.',
    );
    await widget.addNoteUseCase(note);
    setState(() {
      _notes.add(note);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    /// by https://github.com/abdelillahbel
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: widget.onToggleTheme,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _notes.length,
        itemBuilder: (context, index) {
          final note = _notes[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(
                note.title,
                style: theme.textTheme.headlineSmall, // Dynamic text style
              ),
              subtitle: Text(
                note.content,
                style: theme.textTheme.bodyMedium, // Dynamic text style
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNote,
        foregroundColor:
            Theme.of(context).colorScheme.outline, // Use theme-based color
        child: const Icon(Icons.add),
      ),
    );
  }
}
