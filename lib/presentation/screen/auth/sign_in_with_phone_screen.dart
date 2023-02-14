import 'package:ecom_store/application/auth_bloc/log_in_bloc/sign_in_bloc.dart';
import 'package:ecom_store/infrastructure/auth/firebase_auth_facade.dart';
import 'package:ecom_store/presentation/screen/auth/widgets/phone_number_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInWithPhoneScreen extends StatelessWidget {
  const SignInWithPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInBloc(FirebaseAuthFacade()),
      child: const Scaffold(
        body: PhoneNumberForm(),
      ),
    );
  }
}
