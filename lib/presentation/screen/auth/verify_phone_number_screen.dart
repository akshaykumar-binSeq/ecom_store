import 'package:ecom_store/application/auth_bloc/auth_bloc.dart';
import 'package:ecom_store/infrastructure/auth/firebase_auth_facade.dart';
import 'package:ecom_store/presentation/screen/auth/widgets/verify_phone_number_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyPhoneNumberScreen extends StatelessWidget {
  final String phoneNumber;
  const VerifyPhoneNumberScreen({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(authFacade: FirebaseAuthFacade()),
      child: VerifyPhoneNumberWidget(
        phoneNumber: phoneNumber,
      ),
    );
  }
}
