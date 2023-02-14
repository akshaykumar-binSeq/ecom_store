import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecom_store/application/auth_bloc/auth_bloc.dart';
import 'package:ecom_store/domain/auth/user.dart';
import 'package:ecom_store/domain/core/constants.dart';
import 'package:ecom_store/infrastructure/auth/firebase_auth_facade.dart';
import 'package:ecom_store/presentation/screen/auth/sign_in_sign_up_screen.dart';
import 'package:ecom_store/presentation/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatelessWidget {
  final BuildContext context;
  final GlobalKey<ScaffoldState> scaffoldKey;
  const DrawerWidget(
      {super.key, required this.context, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return _drawer();
  }

  Widget _drawer() {
    return Drawer(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      backgroundColor: Colors.green,
      width: screenWidth - 10,
      child: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Material(
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    scaffoldKey.currentState!.closeDrawer();
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(40)),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.green,
                            Colors.greenAccent,
                          ],
                        )),
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const SizedBox(width: 30),
                              InkWell(
                                onTap: () {
                                  Get.offAll(() => const HomeScreen());
                                },
                                child: Container(
                                  width: screenWidth * .3,
                                  height: screenWidth * .3,
                                  decoration: BoxDecoration(
                                    color: secondaryColor[50],
                                    borderRadius: BorderRadius.circular(
                                        (screenWidth * .3) / 2),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        (screenWidth * .3) / 2),
                                    child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl: User.photoUrl,
                                      placeholder: (context, url) => Container(
                                        margin: const EdgeInsets.all(1),
                                        child: const Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      ),
                                      imageBuilder: (context, imageProvider) =>
                                          Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: imageProvider,
                                                fit: BoxFit.cover)),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const SizedBox(
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/image/user_image.png'),
                                          height: double.infinity,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.close,
                                color: Colors.white,
                              )
                            ]),
                        const SizedBox(height: 12),
                        Text(
                          User.name.getOrElse('Display Name'),
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          User.phoneNumber,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          User.emailAddress
                              .getOrElse('Email Address not linked'),
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'ID: ${User.uniqueId.getOrElse('null')}',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              LogOutButton(scaffoldKey: scaffoldKey),
            ],
          ),
        ),
      ),
    );
  }
}

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.green[800], borderRadius: BorderRadius.circular(0)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(children: [
              Icon(
                Icons.logout,
                size: 30,
                color: secondaryColor[50],
              ),
              const SizedBox(width: 12),
              Expanded(
                  child: Text(
                'Logout',
                style: TextStyle(
                    color: secondaryColor[50],
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ))
            ]),
          ),
        ),
        onTap: () {
          scaffoldKey.currentState!.openEndDrawer();
          showDialog(
            context: context,
            builder: (context) {
              return BlocProvider(
                create: (context) => AuthBloc(authFacade: FirebaseAuthFacade()),
                child: AlertDialog(
                  content: const Text(
                    'Are you sure want to log out?',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  actions: [
                    OutlinedButton(
                      child: const Text('No'),
                      onPressed: () {
                        scaffoldKey.currentState!.closeDrawer();
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          child: const Text('Yes'),
                          onPressed: () {
                            scaffoldKey.currentState!.closeDrawer();
                            Navigator.pop(context);

                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.signedOut());

                            Get.offAll(() => const SignInSignUpScreen());
                          },
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
}
