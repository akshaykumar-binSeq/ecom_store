// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String countryCode) selectCountryCode,
    required TResult Function(String phoneNumber) enteringPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function(String countryCode)? selectCountryCode,
    TResult? Function(String phoneNumber)? enteringPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String countryCode)? selectCountryCode,
    TResult Function(String phoneNumber)? enteringPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SelectCountryCode value) selectCountryCode,
    required TResult Function(EnteringPhoneNumber value) enteringPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(SelectCountryCode value)? selectCountryCode,
    TResult? Function(EnteringPhoneNumber value)? enteringPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SelectCountryCode value)? selectCountryCode,
    TResult Function(EnteringPhoneNumber value)? enteringPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SignInEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String countryCode) selectCountryCode,
    required TResult Function(String phoneNumber) enteringPhoneNumber,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function(String countryCode)? selectCountryCode,
    TResult? Function(String phoneNumber)? enteringPhoneNumber,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String countryCode)? selectCountryCode,
    TResult Function(String phoneNumber)? enteringPhoneNumber,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SelectCountryCode value) selectCountryCode,
    required TResult Function(EnteringPhoneNumber value) enteringPhoneNumber,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(SelectCountryCode value)? selectCountryCode,
    TResult? Function(EnteringPhoneNumber value)? enteringPhoneNumber,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SelectCountryCode value)? selectCountryCode,
    TResult Function(EnteringPhoneNumber value)? enteringPhoneNumber,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignInEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$SignInWithGooglePressedCopyWith<$Res> {
  factory _$$SignInWithGooglePressedCopyWith(_$SignInWithGooglePressed value,
          $Res Function(_$SignInWithGooglePressed) then) =
      __$$SignInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInWithGooglePressed>
    implements _$$SignInWithGooglePressedCopyWith<$Res> {
  __$$SignInWithGooglePressedCopyWithImpl(_$SignInWithGooglePressed _value,
      $Res Function(_$SignInWithGooglePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithGooglePressed implements SignInWithGooglePressed {
  const _$SignInWithGooglePressed();

  @override
  String toString() {
    return 'SignInEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String countryCode) selectCountryCode,
    required TResult Function(String phoneNumber) enteringPhoneNumber,
  }) {
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function(String countryCode)? selectCountryCode,
    TResult? Function(String phoneNumber)? enteringPhoneNumber,
  }) {
    return signInWithGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String countryCode)? selectCountryCode,
    TResult Function(String phoneNumber)? enteringPhoneNumber,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SelectCountryCode value) selectCountryCode,
    required TResult Function(EnteringPhoneNumber value) enteringPhoneNumber,
  }) {
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(SelectCountryCode value)? selectCountryCode,
    TResult? Function(EnteringPhoneNumber value)? enteringPhoneNumber,
  }) {
    return signInWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SelectCountryCode value)? selectCountryCode,
    TResult Function(EnteringPhoneNumber value)? enteringPhoneNumber,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressed implements SignInEvent {
  const factory SignInWithGooglePressed() = _$SignInWithGooglePressed;
}

/// @nodoc
abstract class _$$SelectCountryCodeCopyWith<$Res> {
  factory _$$SelectCountryCodeCopyWith(
          _$SelectCountryCode value, $Res Function(_$SelectCountryCode) then) =
      __$$SelectCountryCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String countryCode});
}

/// @nodoc
class __$$SelectCountryCodeCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SelectCountryCode>
    implements _$$SelectCountryCodeCopyWith<$Res> {
  __$$SelectCountryCodeCopyWithImpl(
      _$SelectCountryCode _value, $Res Function(_$SelectCountryCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
  }) {
    return _then(_$SelectCountryCode(
      null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectCountryCode implements SelectCountryCode {
  const _$SelectCountryCode(this.countryCode);

  @override
  final String countryCode;

  @override
  String toString() {
    return 'SignInEvent.selectCountryCode(countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCountryCode &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCountryCodeCopyWith<_$SelectCountryCode> get copyWith =>
      __$$SelectCountryCodeCopyWithImpl<_$SelectCountryCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String countryCode) selectCountryCode,
    required TResult Function(String phoneNumber) enteringPhoneNumber,
  }) {
    return selectCountryCode(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function(String countryCode)? selectCountryCode,
    TResult? Function(String phoneNumber)? enteringPhoneNumber,
  }) {
    return selectCountryCode?.call(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String countryCode)? selectCountryCode,
    TResult Function(String phoneNumber)? enteringPhoneNumber,
    required TResult orElse(),
  }) {
    if (selectCountryCode != null) {
      return selectCountryCode(countryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SelectCountryCode value) selectCountryCode,
    required TResult Function(EnteringPhoneNumber value) enteringPhoneNumber,
  }) {
    return selectCountryCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(SelectCountryCode value)? selectCountryCode,
    TResult? Function(EnteringPhoneNumber value)? enteringPhoneNumber,
  }) {
    return selectCountryCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SelectCountryCode value)? selectCountryCode,
    TResult Function(EnteringPhoneNumber value)? enteringPhoneNumber,
    required TResult orElse(),
  }) {
    if (selectCountryCode != null) {
      return selectCountryCode(this);
    }
    return orElse();
  }
}

abstract class SelectCountryCode implements SignInEvent {
  const factory SelectCountryCode(final String countryCode) =
      _$SelectCountryCode;

  String get countryCode;
  @JsonKey(ignore: true)
  _$$SelectCountryCodeCopyWith<_$SelectCountryCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnteringPhoneNumberCopyWith<$Res> {
  factory _$$EnteringPhoneNumberCopyWith(_$EnteringPhoneNumber value,
          $Res Function(_$EnteringPhoneNumber) then) =
      __$$EnteringPhoneNumberCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$EnteringPhoneNumberCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$EnteringPhoneNumber>
    implements _$$EnteringPhoneNumberCopyWith<$Res> {
  __$$EnteringPhoneNumberCopyWithImpl(
      _$EnteringPhoneNumber _value, $Res Function(_$EnteringPhoneNumber) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$EnteringPhoneNumber(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnteringPhoneNumber implements EnteringPhoneNumber {
  const _$EnteringPhoneNumber(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'SignInEvent.enteringPhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnteringPhoneNumber &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnteringPhoneNumberCopyWith<_$EnteringPhoneNumber> get copyWith =>
      __$$EnteringPhoneNumberCopyWithImpl<_$EnteringPhoneNumber>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signInWithGooglePressed,
    required TResult Function(String countryCode) selectCountryCode,
    required TResult Function(String phoneNumber) enteringPhoneNumber,
  }) {
    return enteringPhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function(String countryCode)? selectCountryCode,
    TResult? Function(String phoneNumber)? enteringPhoneNumber,
  }) {
    return enteringPhoneNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signInWithGooglePressed,
    TResult Function(String countryCode)? selectCountryCode,
    TResult Function(String phoneNumber)? enteringPhoneNumber,
    required TResult orElse(),
  }) {
    if (enteringPhoneNumber != null) {
      return enteringPhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(SelectCountryCode value) selectCountryCode,
    required TResult Function(EnteringPhoneNumber value) enteringPhoneNumber,
  }) {
    return enteringPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(SelectCountryCode value)? selectCountryCode,
    TResult? Function(EnteringPhoneNumber value)? enteringPhoneNumber,
  }) {
    return enteringPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(SelectCountryCode value)? selectCountryCode,
    TResult Function(EnteringPhoneNumber value)? enteringPhoneNumber,
    required TResult orElse(),
  }) {
    if (enteringPhoneNumber != null) {
      return enteringPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class EnteringPhoneNumber implements SignInEvent {
  const factory EnteringPhoneNumber(final String phoneNumber) =
      _$EnteringPhoneNumber;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$EnteringPhoneNumberCopyWith<_$EnteringPhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  String? get countryCode => throw _privateConstructorUsedError;
  PhoneNumber? get phoneNumber => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {String? countryCode,
      PhoneNumber? phoneNumber,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = freezed,
    Object? phoneNumber = freezed,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? countryCode,
      PhoneNumber? phoneNumber,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignInState>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = freezed,
    Object? phoneNumber = freezed,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_SignInState(
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {required this.countryCode,
      required this.phoneNumber,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final String? countryCode;
  @override
  final PhoneNumber? phoneNumber;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInState(countryCode: $countryCode, phoneNumber: $phoneNumber, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryCode, phoneNumber,
      showErrorMessages, isSubmitting, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required final String? countryCode,
      required final PhoneNumber? phoneNumber,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignInState;

  @override
  String? get countryCode;
  @override
  PhoneNumber? get phoneNumber;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
