import 'package:ecom_store/domain/auth/i_auth_facade.dart';
import 'package:ecom_store/domain/auth/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authFacade;

  AuthBloc({required this.authFacade}) : super(const AuthState.initial()) {
    on<AuthCheckRequested>((event, emit) async {
      final userOption = await authFacade.getSignedInUser();

      emit(userOption.fold(
        () => const AuthState.unauthenticated(),
        (user) => AuthState.authenticated(user),
      ));
    });

    on<SignedOut>((event, emit) async {
      await authFacade.signOut();
      emit(const AuthState.unauthenticated());
    });
  }
}
