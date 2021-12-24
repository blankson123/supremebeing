// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  ServerError server({String message = 'Something went wrong.'}) {
    return ServerError(
      message: message,
    );
  }

  ClientError client({String message = 'Something went wrong.'}) {
    return ClientError(
      message: message,
    );
  }

  TimeOutError timeout({String message = 'The request timed out.'}) {
    return TimeOutError(
      message: message,
    );
  }

  GenericError generic({String message = 'Something went wrong.'}) {
    return GenericError(
      message: message,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) client,
    required TResult Function(String message) timeout,
    required TResult Function(String message) generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? client,
    TResult Function(String message)? timeout,
    TResult Function(String message)? generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? client,
    TResult Function(String message)? timeout,
    TResult Function(String message)? generic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) server,
    required TResult Function(ClientError value) client,
    required TResult Function(TimeOutError value) timeout,
    required TResult Function(GenericError value) generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? server,
    TResult Function(ClientError value)? client,
    TResult Function(TimeOutError value)? timeout,
    TResult Function(GenericError value)? generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? server,
    TResult Function(ClientError value)? client,
    TResult Function(TimeOutError value)? timeout,
    TResult Function(GenericError value)? generic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ServerError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerError extends ServerError {
  const _$ServerError({this.message = 'Something went wrong.'}) : super._();

  @JsonKey(defaultValue: 'Something went wrong.')
  @override
  final String message;

  @override
  String toString() {
    return 'Failure.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServerError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $ServerErrorCopyWith<ServerError> get copyWith =>
      _$ServerErrorCopyWithImpl<ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) client,
    required TResult Function(String message) timeout,
    required TResult Function(String message) generic,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? client,
    TResult Function(String message)? timeout,
    TResult Function(String message)? generic,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? client,
    TResult Function(String message)? timeout,
    TResult Function(String message)? generic,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) server,
    required TResult Function(ClientError value) client,
    required TResult Function(TimeOutError value) timeout,
    required TResult Function(GenericError value) generic,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? server,
    TResult Function(ClientError value)? client,
    TResult Function(TimeOutError value)? timeout,
    TResult Function(GenericError value)? generic,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? server,
    TResult Function(ClientError value)? client,
    TResult Function(TimeOutError value)? timeout,
    TResult Function(GenericError value)? generic,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerError extends Failure {
  const factory ServerError({String message}) = _$ServerError;
  const ServerError._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $ServerErrorCopyWith<ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientErrorCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ClientErrorCopyWith(
          ClientError value, $Res Function(ClientError) then) =
      _$ClientErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$ClientErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ClientErrorCopyWith<$Res> {
  _$ClientErrorCopyWithImpl(
      ClientError _value, $Res Function(ClientError) _then)
      : super(_value, (v) => _then(v as ClientError));

  @override
  ClientError get _value => super._value as ClientError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ClientError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientError extends ClientError {
  const _$ClientError({this.message = 'Something went wrong.'}) : super._();

  @JsonKey(defaultValue: 'Something went wrong.')
  @override
  final String message;

  @override
  String toString() {
    return 'Failure.client(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClientError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $ClientErrorCopyWith<ClientError> get copyWith =>
      _$ClientErrorCopyWithImpl<ClientError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) client,
    required TResult Function(String message) timeout,
    required TResult Function(String message) generic,
  }) {
    return client(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? client,
    TResult Function(String message)? timeout,
    TResult Function(String message)? generic,
  }) {
    return client?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? client,
    TResult Function(String message)? timeout,
    TResult Function(String message)? generic,
    required TResult orElse(),
  }) {
    if (client != null) {
      return client(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) server,
    required TResult Function(ClientError value) client,
    required TResult Function(TimeOutError value) timeout,
    required TResult Function(GenericError value) generic,
  }) {
    return client(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? server,
    TResult Function(ClientError value)? client,
    TResult Function(TimeOutError value)? timeout,
    TResult Function(GenericError value)? generic,
  }) {
    return client?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? server,
    TResult Function(ClientError value)? client,
    TResult Function(TimeOutError value)? timeout,
    TResult Function(GenericError value)? generic,
    required TResult orElse(),
  }) {
    if (client != null) {
      return client(this);
    }
    return orElse();
  }
}

abstract class ClientError extends Failure {
  const factory ClientError({String message}) = _$ClientError;
  const ClientError._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $ClientErrorCopyWith<ClientError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeOutErrorCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $TimeOutErrorCopyWith(
          TimeOutError value, $Res Function(TimeOutError) then) =
      _$TimeOutErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$TimeOutErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $TimeOutErrorCopyWith<$Res> {
  _$TimeOutErrorCopyWithImpl(
      TimeOutError _value, $Res Function(TimeOutError) _then)
      : super(_value, (v) => _then(v as TimeOutError));

  @override
  TimeOutError get _value => super._value as TimeOutError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(TimeOutError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TimeOutError extends TimeOutError {
  const _$TimeOutError({this.message = 'The request timed out.'}) : super._();

  @JsonKey(defaultValue: 'The request timed out.')
  @override
  final String message;

  @override
  String toString() {
    return 'Failure.timeout(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimeOutError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $TimeOutErrorCopyWith<TimeOutError> get copyWith =>
      _$TimeOutErrorCopyWithImpl<TimeOutError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) client,
    required TResult Function(String message) timeout,
    required TResult Function(String message) generic,
  }) {
    return timeout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? client,
    TResult Function(String message)? timeout,
    TResult Function(String message)? generic,
  }) {
    return timeout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? client,
    TResult Function(String message)? timeout,
    TResult Function(String message)? generic,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) server,
    required TResult Function(ClientError value) client,
    required TResult Function(TimeOutError value) timeout,
    required TResult Function(GenericError value) generic,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? server,
    TResult Function(ClientError value)? client,
    TResult Function(TimeOutError value)? timeout,
    TResult Function(GenericError value)? generic,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? server,
    TResult Function(ClientError value)? client,
    TResult Function(TimeOutError value)? timeout,
    TResult Function(GenericError value)? generic,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class TimeOutError extends Failure {
  const factory TimeOutError({String message}) = _$TimeOutError;
  const TimeOutError._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $TimeOutErrorCopyWith<TimeOutError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericErrorCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $GenericErrorCopyWith(
          GenericError value, $Res Function(GenericError) then) =
      _$GenericErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$GenericErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $GenericErrorCopyWith<$Res> {
  _$GenericErrorCopyWithImpl(
      GenericError _value, $Res Function(GenericError) _then)
      : super(_value, (v) => _then(v as GenericError));

  @override
  GenericError get _value => super._value as GenericError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(GenericError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenericError extends GenericError {
  const _$GenericError({this.message = 'Something went wrong.'}) : super._();

  @JsonKey(defaultValue: 'Something went wrong.')
  @override
  final String message;

  @override
  String toString() {
    return 'Failure.generic(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenericError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $GenericErrorCopyWith<GenericError> get copyWith =>
      _$GenericErrorCopyWithImpl<GenericError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) client,
    required TResult Function(String message) timeout,
    required TResult Function(String message) generic,
  }) {
    return generic(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? client,
    TResult Function(String message)? timeout,
    TResult Function(String message)? generic,
  }) {
    return generic?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? client,
    TResult Function(String message)? timeout,
    TResult Function(String message)? generic,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) server,
    required TResult Function(ClientError value) client,
    required TResult Function(TimeOutError value) timeout,
    required TResult Function(GenericError value) generic,
  }) {
    return generic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? server,
    TResult Function(ClientError value)? client,
    TResult Function(TimeOutError value)? timeout,
    TResult Function(GenericError value)? generic,
  }) {
    return generic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? server,
    TResult Function(ClientError value)? client,
    TResult Function(TimeOutError value)? timeout,
    TResult Function(GenericError value)? generic,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(this);
    }
    return orElse();
  }
}

abstract class GenericError extends Failure {
  const factory GenericError({String message}) = _$GenericError;
  const GenericError._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $GenericErrorCopyWith<GenericError> get copyWith =>
      throw _privateConstructorUsedError;
}
