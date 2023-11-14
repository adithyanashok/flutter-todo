import 'package:freezed_annotation/freezed_annotation.dart';
part 'events.freezed.dart';
part 'events.g.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required String userId,
    required DateTime date,
    required String title,
    required String desc,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
}
