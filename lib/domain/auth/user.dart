import 'package:ecom_store/domain/auth/value_objects.dart';
import 'package:ecom_store/domain/core/value_objects/value_objects.dart';

class User {
  static UniqueId uniqueId = UniqueId();
  static StringSingleLine name = StringSingleLine('');
  static EmailAddress emailAddress = EmailAddress('');
  static String photoUrl = '';
  static String phoneNumber = '';

  factory User() => User._internal();
  User._internal();
}
