import 'package:dartz/dartz.dart';
import 'package:ecom_store/domain/auth/auth_failure.dart';
import 'package:ecom_store/domain/auth/i_auth_facade.dart';
import 'package:ecom_store/domain/auth/user.dart';
import 'package:ecom_store/infrastructure/auth/firebase_user_mapper.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseUserMapper _firebaseUserMapper = FirebaseUserMapper();

  FirebaseAuthFacade();

  @override
  Future<Option<User>> getSignedInUser() async {
    final user = firebase.FirebaseAuth.instance.currentUser;
    return optionOf(_firebaseUserMapper.toDomain(user));
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;
      final authCredential = firebase.GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      return await firebase.FirebaseAuth.instance
          .signInWithCredential(authCredential)
          .then((r) => right(unit));
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<List<void>> signOut() async {
    return Future.wait([
      GoogleSignIn().signOut(),
      firebase.FirebaseAuth.instance.signOut(),
    ]);
  }
}
