// by https://github.com/abdelillahbel
import '../../domain/entities/note.dart';

class NoteModel extends Note {
  NoteModel(
      {required String id, required String title, required String content})
      : super(id: id, title: title, content: content);

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
