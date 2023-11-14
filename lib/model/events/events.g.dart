// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventModelImpl _$$EventModelImplFromJson(Map<String, dynamic> json) =>
    _$EventModelImpl(
      id: json['_id'] as String?,
      userId: json['userId'] as String,
      date: DateTime.parse(json['date'] as String),
      title: json['title'] as String,
      desc: json['desc'] as String,
    );

Map<String, dynamic> _$$EventModelImplToJson(_$EventModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'date': instance.date.toIso8601String(),
      'title': instance.title,
      'desc': instance.desc,
    };
