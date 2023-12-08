import 'package:freezed_annotation/freezed_annotation.dart';
part 'notes_model.freezed.dart';
part 'notes_model.g.dart';

@freezed
class NoteModel with _$NoteModel {
  const factory NoteModel({
    @JsonKey(name: '_id') String? id,
    String? userId,
    String? title,
    String? desc,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? v,
  }) = _NoteModel;

  factory NoteModel.fromJson(Map<String, dynamic> json) =>
      _$NoteModelFromJson(json);
}
