// by https://github.com/abdelillahbel
import 'package:flutter/material.dart';
import 'package:noteappxyz/domain/usecases/add_note.dart';
import 'core/utils/constants.dart';
import 'presentation/screens/note_list_screen.dart';

class MyApp extends StatefulWidget {
  final AddNoteUseCase addNoteUseCase;

  const MyApp({Key? key, required this.addNoteUseCase}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  /// by https://github.com/abdelillahbel

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note App',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: _themeMode,
      home: NoteListScreen(
        addNoteUseCase: widget.addNoteUseCase,
        onToggleTheme: _toggleTheme, // This fixes the issue
      ),
    );
  }
}
