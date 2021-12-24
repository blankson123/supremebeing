// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_model.freezed.dart';
part 'role_model.g.dart';

@freezed
class Role with _$Role {
  const factory Role({
    required int id,
    required String name,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    required String status,
    required List<String> permissions,
  }) = _Role;

  const Role._();

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  factory Role.empty() =>
      const Role(id: 0, name: '', status: '', permissions: <String>[]);
}
