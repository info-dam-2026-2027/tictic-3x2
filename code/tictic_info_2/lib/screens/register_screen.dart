import 'package:flutter/material.dart';
import 'package:tictic_info_2/screens/welcome_screen.dart';

import '../styles/sizes.dart';
import '../widgets/logo_application.dart';
import '../widgets/partials/text_link.dart';
import '../widgets/partials/w_back_button.dart';
import '../widgets/register/register_form.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static final String routeName = '/register';

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
                  child: GestureDetector(onTap: (){Navigator.pushNamed(context, WelcomeScreen.routeName);},child: LogoApplication()),
                ),
                SizedBox(height: kSpacer),
                RegisterForm(),
                SizedBox(height: kSpacer * 2),
                TextLink(
                  link: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  text: 'J’ai déjà un compte.',
                  cta: 'Je me connecte !',
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
