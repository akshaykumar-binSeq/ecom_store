import 'package:dartz/dartz.dart';
import 'package:ecom_store/domain/auth/auth_failure.dart';
import 'package:ecom_store/domain/auth/i_auth_facade.dart';
import 'package:ecom_store/domain/auth/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;
  SignInBloc(this._authFacade) : super(SignInState.initial()) {
    on<SignInWithGooglePressed>((event, emit) async {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));
      final failureOrSuccess = await _authFacade.signInWithGoogle();
      emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      ));
    });

    on<SelectCountryCode>((event, emit) {
      emit(state.copyWith(
        countryCode: event.countryCode,
        authFailureOrSuccessOption: none(),
      ));
    });

    on<EnteringPhoneNumber>((event, emit) {
      emit(state.copyWith(
        phoneNumber: PhoneNumber(event.phoneNumber.toString()),
        authFailureOrSuccessOption: none(),
      ));
    });
  }
}
