// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unAuthorized,
    required TResult Function() unexpected,
    required TResult Function(String errorCode) serverError,
    required TResult Function() serverTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unAuthorized,
    TResult? Function()? unexpected,
    TResult? Function(String errorCode)? serverError,
    TResult? Function()? serverTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unAuthorized,
    TResult Function()? unexpected,
    TResult Function(String errorCode)? serverError,
    TResult Function()? serverTimeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(UnExpected value) unexpected,
    required TResult Function(ServerError value) serverError,
    required TResult Function(ServerTimedOut value) serverTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnAuthorized value)? unAuthorized,
    TResult? Function(UnExpected value)? unexpected,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(ServerTimedOut value)? serverTimeOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(UnExpected value)? unexpected,
    TResult Function(ServerError value)? serverError,
    TResult Function(ServerTimedOut value)? serverTimeOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res, NetworkFailure>;
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res, $Val extends NetworkFailure>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnAuthorizedCopyWith<$Res> {
  factory _$$UnAuthorizedCopyWith(
          _$UnAuthorized value, $Res Function(_$UnAuthorized) then) =
      __$$UnAuthorizedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnAuthorizedCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$UnAuthorized>
    implements _$$UnAuthorizedCopyWith<$Res> {
  __$$UnAuthorizedCopyWithImpl(
      _$UnAuthorized _value, $Res Function(_$UnAuthorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnAuthorized(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnAuthorized implements UnAuthorized {
  const _$UnAuthorized(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkFailure.unAuthorized(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnAuthorized &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnAuthorizedCopyWith<_$UnAuthorized> get copyWith =>
      __$$UnAuthorizedCopyWithImpl<_$UnAuthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unAuthorized,
    required TResult Function() unexpected,
    required TResult Function(String errorCode) serverError,
    required TResult Function() serverTimeOut,
  }) {
    return unAuthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unAuthorized,
    TResult? Function()? unexpected,
    TResult? Function(String errorCode)? serverError,
    TResult? Function()? serverTimeOut,
  }) {
    return unAuthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unAuthorized,
    TResult Function()? unexpected,
    TResult Function(String errorCode)? serverError,
    TResult Function()? serverTimeOut,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(UnExpected value) unexpected,
    required TResult Function(ServerError value) serverError,
    required TResult Function(ServerTimedOut value) serverTimeOut,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnAuthorized value)? unAuthorized,
    TResult? Function(UnExpected value)? unexpected,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(ServerTimedOut value)? serverTimeOut,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(UnExpected value)? unexpected,
    TResult Function(ServerError value)? serverError,
    TResult Function(ServerTimedOut value)? serverTimeOut,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class UnAuthorized implements NetworkFailure {
  const factory UnAuthorized(final String message) = _$UnAuthorized;

  String get message;
  @JsonKey(ignore: true)
  _$$UnAuthorizedCopyWith<_$UnAuthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnExpectedCopyWith<$Res> {
  factory _$$UnExpectedCopyWith(
          _$UnExpected value, $Res Function(_$UnExpected) then) =
      __$$UnExpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnExpectedCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$UnExpected>
    implements _$$UnExpectedCopyWith<$Res> {
  __$$UnExpectedCopyWithImpl(
      _$UnExpected _value, $Res Function(_$UnExpected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnExpected implements UnExpected {
  const _$UnExpected();

  @override
  String toString() {
    return 'NetworkFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnExpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unAuthorized,
    required TResult Function() unexpected,
    required TResult Function(String errorCode) serverError,
    required TResult Function() serverTimeOut,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unAuthorized,
    TResult? Function()? unexpected,
    TResult? Function(String errorCode)? serverError,
    TResult? Function()? serverTimeOut,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unAuthorized,
    TResult Function()? unexpected,
    TResult Function(String errorCode)? serverError,
    TResult Function()? serverTimeOut,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(UnExpected value) unexpected,
    required TResult Function(ServerError value) serverError,
    required TResult Function(ServerTimedOut value) serverTimeOut,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnAuthorized value)? unAuthorized,
    TResult? Function(UnExpected value)? unexpected,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(ServerTimedOut value)? serverTimeOut,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(UnExpected value)? unexpected,
    TResult Function(ServerError value)? serverError,
    TResult Function(ServerTimedOut value)? serverTimeOut,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class UnExpected implements NetworkFailure {
  const factory UnExpected() = _$UnExpected;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorCode});
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
  }) {
    return _then(_$ServerError(
      null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError(this.errorCode);

  @override
  final String errorCode;

  @override
  String toString() {
    return 'NetworkFailure.serverError(errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerError &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorCopyWith<_$ServerError> get copyWith =>
      __$$ServerErrorCopyWithImpl<_$ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unAuthorized,
    required TResult Function() unexpected,
    required TResult Function(String errorCode) serverError,
    required TResult Function() serverTimeOut,
  }) {
    return serverError(errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unAuthorized,
    TResult? Function()? unexpected,
    TResult? Function(String errorCode)? serverError,
    TResult? Function()? serverTimeOut,
  }) {
    return serverError?.call(errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unAuthorized,
    TResult Function()? unexpected,
    TResult Function(String errorCode)? serverError,
    TResult Function()? serverTimeOut,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(UnExpected value) unexpected,
    required TResult Function(ServerError value) serverError,
    required TResult Function(ServerTimedOut value) serverTimeOut,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnAuthorized value)? unAuthorized,
    TResult? Function(UnExpected value)? unexpected,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(ServerTimedOut value)? serverTimeOut,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(UnExpected value)? unexpected,
    TResult Function(ServerError value)? serverError,
    TResult Function(ServerTimedOut value)? serverTimeOut,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements NetworkFailure {
  const factory ServerError(final String errorCode) = _$ServerError;

  String get errorCode;
  @JsonKey(ignore: true)
  _$$ServerErrorCopyWith<_$ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerTimedOutCopyWith<$Res> {
  factory _$$ServerTimedOutCopyWith(
          _$ServerTimedOut value, $Res Function(_$ServerTimedOut) then) =
      __$$ServerTimedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerTimedOutCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$ServerTimedOut>
    implements _$$ServerTimedOutCopyWith<$Res> {
  __$$ServerTimedOutCopyWithImpl(
      _$ServerTimedOut _value, $Res Function(_$ServerTimedOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerTimedOut implements ServerTimedOut {
  const _$ServerTimedOut();

  @override
  String toString() {
    return 'NetworkFailure.serverTimeOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerTimedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unAuthorized,
    required TResult Function() unexpected,
    required TResult Function(String errorCode) serverError,
    required TResult Function() serverTimeOut,
  }) {
    return serverTimeOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unAuthorized,
    TResult? Function()? unexpected,
    TResult? Function(String errorCode)? serverError,
    TResult? Function()? serverTimeOut,
  }) {
    return serverTimeOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unAuthorized,
    TResult Function()? unexpected,
    TResult Function(String errorCode)? serverError,
    TResult Function()? serverTimeOut,
    required TResult orElse(),
  }) {
    if (serverTimeOut != null) {
      return serverTimeOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(UnExpected value) unexpected,
    required TResult Function(ServerError value) serverError,
    required TResult Function(ServerTimedOut value) serverTimeOut,
  }) {
    return serverTimeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnAuthorized value)? unAuthorized,
    TResult? Function(UnExpected value)? unexpected,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(ServerTimedOut value)? serverTimeOut,
  }) {
    return serverTimeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(UnExpected value)? unexpected,
    TResult Function(ServerError value)? serverError,
    TResult Function(ServerTimedOut value)? serverTimeOut,
    required TResult orElse(),
  }) {
    if (serverTimeOut != null) {
      return serverTimeOut(this);
    }
    return orElse();
  }
}

abstract class ServerTimedOut implements NetworkFailure {
  const factory ServerTimedOut() = _$ServerTimedOut;
}
