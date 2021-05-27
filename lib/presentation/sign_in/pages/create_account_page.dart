import 'package:allwork/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:allwork/injection.dart';
import 'package:allwork/presentation/sign_in/widgets/create_account_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
            width: double.infinity,
            child: ListView(
              children: [
                const SizedBox(height: 200),
                Text(
                  'Create Account ',
                  style: themeData.textTheme.headline3!
                      .copyWith(color: Colors.black87),
                ),
                const SizedBox(height: 30),
                CreateAccountForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
