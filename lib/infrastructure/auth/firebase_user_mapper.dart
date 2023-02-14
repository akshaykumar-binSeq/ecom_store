import 'package:ecom_store/domain/auth/user.dart';
import 'package:ecom_store/domain/auth/value_objects.dart';
import 'package:ecom_store/domain/core/value_objects/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

class FirebaseUserMapper {
  User? toDomain(firebase.User? _) {
    if (_ == null) {
      return null;
    } else {
      User.uniqueId = UniqueId.fromUniqueString(_.uid);
      User.name = StringSingleLine(_.displayName ?? '');
      User.emailAddress = EmailAddress(_.email ?? '');
      User.phoneNumber = _.phoneNumber ?? '';
      User.photoUrl = _.photoURL ?? '';
      return User();
    }
  }
}
