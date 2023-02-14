import 'package:dartz/dartz.dart';
import 'package:ecom_store/domain/auth/auth_failure.dart';
import 'package:ecom_store/domain/auth/user.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
