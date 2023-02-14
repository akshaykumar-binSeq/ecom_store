part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.started() = _Started;
  const factory SignInEvent.signInWithGooglePressed() = SignInWithGooglePressed;
  const factory SignInEvent.selectCountryCode(String countryCode) =
      SelectCountryCode;
  const factory SignInEvent.enteringPhoneNumber(String phoneNumber) =
      EnteringPhoneNumber;
}
