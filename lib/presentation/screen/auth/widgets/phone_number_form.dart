import 'package:country_picker/country_picker.dart';
import 'package:ecom_store/application/auth_bloc/log_in_bloc/sign_in_bloc.dart';
import 'package:ecom_store/domain/core/constants.dart';
import 'package:ecom_store/presentation/screen/auth/verify_phone_number_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class PhoneNumberForm extends StatelessWidget {
  const PhoneNumberForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  showCountryPicker(
                    context: context,
                    showPhoneCode: true,
                    countryListTheme: CountryListThemeData(
                      flagSize: 25,
                      backgroundColor: Colors.white,
                      textStyle:
                          const TextStyle(fontSize: 16, color: Colors.blueGrey),
                      bottomSheetHeight:
                          500, // Optional. Country list modal height
                      //Optional. Sets the border radius for the bottomsheet.
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      //Optional. Styles the search field.
                      inputDecoration: InputDecoration(
                        labelText: 'Search',
                        hintText: 'Start typing to search',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF8C98A8).withOpacity(0.2),
                          ),
                        ),
                      ),
                    ),
                    onSelect: (Country country) => context
                        .read<SignInBloc>()
                        .add(SignInEvent.selectCountryCode(
                            '+ ${country.phoneCode}')),
                  );
                },
                child: Container(
                    height: 60,
                    width: screenWidth - 40,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(
                      child: Text(
                        state.countryCode ?? '',
                        style: boldHeading,
                      ),
                    )),
              ),
              if (state.showErrorMessages &&
                  state.countryCode == 'Select Country Code')
                const Text(
                  'Select Country Code',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.red),
                ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  style: boldHeading,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone),
                    labelText: 'Phone',
                    labelStyle: boldHeading,
                    contentPadding: const EdgeInsets.all(16),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide: BorderSide(color: Colors.grey)),
                    errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide: BorderSide(color: Colors.red)),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                  autocorrect: false,
                  onChanged: (value) => context
                      .read<SignInBloc>()
                      .add(SignInEvent.enteringPhoneNumber(value)),
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    // LengthLimitingTextInputFormatter(10),

                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  validator: (v) {
                    return state.phoneNumber != null
                        ? context
                            .read<SignInBloc>()
                            .state
                            .phoneNumber!
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                invalidPhoneNumber: (_) =>
                                    'Invalid Phone Number',
                                orElse: () => null,
                              ),
                              (_) => null,
                            )
                        : 'Phone Number Cannot be Empty';
                  },
                ),
              ),
              const SizedBox(height: 60),
              SizedBox(
                height: 60,
                width: screenWidth - 40,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => VerifyPhoneNumberScreen(
                      phoneNumber: state.countryCode! +
                          state.phoneNumber!.getOrElse(''))),
                  // context
                  //     .read<SignInBloc>()
                  //     .add(const SignInEvent.signInWithPhonePressed()),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text(
                    'Send OTP',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
