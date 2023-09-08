// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$$_TodoFromJson(Map<String, dynamic> json) => _$_Todo(
      id: json['id'] as int,
      task: json['task'] as String,
      date: DateTime.parse(json['date'] as String),
      status: $enumDecode(_$TodoStatusEnumMap, json['status']),
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'id': instance.id,
      'task': instance.task,
      'date': instance.date.toIso8601String(),
      'status': _$TodoStatusEnumMap[instance.status]!,
      'category': instance.category,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$TodoStatusEnumMap = {
  TodoStatus.todo: 'todo',
  TodoStatus.inProgress: 'inProgress',
  TodoStatus.completed: 'completed',
};
