import 'package:allwork/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:allwork/presentation/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
      state.authFailureOrSuccessOption.fold(
        // if its none
        () {},
        // if its some i.e its either a filure or a success
        (either) => either.fold(
          (failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: [
                    Icon(
                      Icons.warning,
                      color: Colors.red[900],
                    ),
                    Text(
                      failure.map(
                        cancelledByUser: (_) => 'Cancelled by User',
                        serverError: (_) => 'Server Error',
                        emailAlreadyInUse: (_) => 'Email already in use',
                        invalidEmailAndPasswordCombination: (_) =>
                            'Invalid email and password combination',
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          // TODO: Navigate
          (_) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
      );
    }, builder: (context, state) {
      return Form(
        autovalidateMode: state.showErrorMessages
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
              ),
              autocorrect: false,
              onChanged: (value) => context
                  .read<SignInFormBloc>()
                  .add(SignInFormEvent.emailChanged(value)),
              validator: (_) =>
                  context.read<SignInFormBloc>().state.emailAddress.value.fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) => 'Invalid Email',
                          orElse: () => null,
                        ),
                        (r) => null,
                      ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
              ),
              autocorrect: false,
              obscureText: true,
              onChanged: (value) => context
                  .read<SignInFormBloc>()
                  .add(SignInFormEvent.passwordChanged(value)),
              validator: (_) =>
                  context.read<SignInFormBloc>().state.password.value.fold(
                        (f) => f.maybeMap(
                          shortPassword: (_) => 'Short Password',
                          orElse: () => null,
                        ),
                        (r) => null,
                      ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  context.read<SignInFormBloc>().add(const SignInFormEvent
                      .signInWithEmailAndPasswordPressed());
                },
                child: const Text('Log In'),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 250,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  context
                      .read<SignInFormBloc>()
                      .add(const SignInFormEvent.signInWithGooglePressed());
                },
                child: const Text('Sign In with Google'),
              ),
            ),
          ],
        ),
      );
    });
  }
}
