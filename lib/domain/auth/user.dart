// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String email,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Authenticated;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
