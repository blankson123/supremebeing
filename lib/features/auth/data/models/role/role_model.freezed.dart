// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'role_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
class _$RoleTearOff {
  const _$RoleTearOff();

  _Role call(
      {required int id,
      required String name,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      required String status,
      required List<String> permissions}) {
    return _Role(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
      status: status,
      permissions: permissions,
    );
  }

  Role fromJson(Map<String, Object?> json) {
    return Role.fromJson(json);
  }
}

/// @nodoc
const $Role = _$RoleTearOff();

/// @nodoc
mixin _$Role {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<String> get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      String status,
      List<String> permissions});
}

/// @nodoc
class _$RoleCopyWithImpl<$Res> implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  final Role _value;
  // ignore: unused_field
  final $Res Function(Role) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = freezed,
    Object? permissions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: permissions == freezed
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$RoleCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$RoleCopyWith(_Role value, $Res Function(_Role) then) =
      __$RoleCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      String status,
      List<String> permissions});
}

/// @nodoc
class __$RoleCopyWithImpl<$Res> extends _$RoleCopyWithImpl<$Res>
    implements _$RoleCopyWith<$Res> {
  __$RoleCopyWithImpl(_Role _value, $Res Function(_Role) _then)
      : super(_value, (v) => _then(v as _Role));

  @override
  _Role get _value => super._value as _Role;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = freezed,
    Object? permissions = freezed,
  }) {
    return _then(_Role(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: permissions == freezed
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Role extends _Role {
  const _$_Role(
      {required this.id,
      required this.name,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      required this.status,
      required this.permissions})
      : super._();

  factory _$_Role.fromJson(Map<String, dynamic> json) => _$$_RoleFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  final String status;
  @override
  final List<String> permissions;

  @override
  String toString() {
    return 'Role(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, status: $status, permissions: $permissions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Role &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.permissions, permissions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt, updatedAt,
      status, const DeepCollectionEquality().hash(permissions));

  @JsonKey(ignore: true)
  @override
  _$RoleCopyWith<_Role> get copyWith =>
      __$RoleCopyWithImpl<_Role>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoleToJson(this);
  }
}

abstract class _Role extends Role {
  const factory _Role(
      {required int id,
      required String name,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      required String status,
      required List<String> permissions}) = _$_Role;
  const _Role._() : super._();

  factory _Role.fromJson(Map<String, dynamic> json) = _$_Role.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  String get status;
  @override
  List<String> get permissions;
  @override
  @JsonKey(ignore: true)
  _$RoleCopyWith<_Role> get copyWith => throw _privateConstructorUsedError;
}
