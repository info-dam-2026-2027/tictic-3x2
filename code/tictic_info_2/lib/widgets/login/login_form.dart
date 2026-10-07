import 'package:flutter/material.dart';

import '../../styles/sizes.dart';
import '../../validators/validators.dart';
import '../main_button.dart';
import '../my_password_input.dart';
import '../my_text_input.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            MyTextInput(
              controller: mailController,
              validation: Validators.email,
              label: 'Adresse mail *',
              placeholder: 'Ex: johndoe@example.com',
            ),
            SizedBox(height: kSpacer),
            MyPasswordInput(passwordController: passwordController),
            SizedBox(height: kSpacer),
            Align(
              alignment: Alignment.bottomRight,
              child: MainButton(
                onTap: () => {
                  if (_formKey.currentState!.validate())
                    {Navigator.pushNamed(context, '/home')},
                },
                label: 'Je me connecte',
                color: 'dark',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
