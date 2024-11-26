// by https://github.com/abdelillahbel
import '../../domain/entities/note.dart';

class NoteModel extends Note {
  NoteModel({required super.id, required super.title, required super.content});

  factory NoteModel.fromJson(Map<String, dynamic> json) {
    return NoteModel(
      id: json['id'],
      title: json['title'],
      content: json['content'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
    };
  }
}
