import 'package:flutter/material.dart';
import 'package:tictic_info_2/screens/register_screen.dart';
import 'package:tictic_info_2/screens/welcome_screen.dart';

import '../styles/sizes.dart';
import '../widgets/login/login_form.dart';
import '../widgets/logo_application.dart';
import '../widgets/partials/text_link.dart';
import '../widgets/partials/w_back_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static final String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                WBackButton(),
                Padding(
                  padding: const EdgeInsets.only(
                    top: kWelcomeLogoPaddingTop / 1.5,
                    bottom: kWelcomeLogoPaddingBottom,
                  ),
                  child: GestureDetector(onTap: () {Navigator.pushNamed(context, WelcomeScreen.routeName);}, child: LogoApplication()),
                ),
                SizedBox(height: kSpacer),
                LoginForm(),
                SizedBox(height: kSpacer * 2),
                TextLink(
                  link: () {
                    Navigator.pushNamed(context, RegisterScreen.routeName);
                  },
                  text: 'Je n’ai pas de compte.',
                  cta: 'Créer mon compte !',
                ),
                SizedBox(height: kSpacer * 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}