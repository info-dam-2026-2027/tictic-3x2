import 'package:flutter/material.dart';
import 'package:tictic_info_2/screens/register_screen.dart';
import 'package:tictic_info_2/widgets/welcome/separator_text.dart';

import '../styles/paddings.dart';
import '../styles/sizes.dart';
import '../widgets/carousel.dart';
import '../widgets/logo_application.dart';
import '../widgets/main_button.dart';
import 'home_screen.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static final String routeName = '/';

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
                Padding(
                  padding: const EdgeInsets.only(
                    top: kWelcomeLogoPaddingTop,
                    bottom: kWelcomeLogoPaddingBottom,
                  ),
                  child: LogoApplication(),
                ),
                Carousel(),
                SizedBox(height: kSpacer * 4,),
                MainButton(
                  onTap: () => {Navigator.pushNamed(context, HomeScreen.routeName)},
                  label: 'Continuer sans compte',
                  color: 'dark',
                ),
                SeparatorText(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kPaddingM,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MainButton(
                        onTap: () => {Navigator.pushNamed(context, LoginScreen.routeName)},
                        label: 'Se connecter',
                        color: 'light',
                      ),
                      SizedBox(width: kSpacer,),
                      MainButton(
                        onTap: () => {Navigator.pushNamed(context, RegisterScreen.routeName)},
                        label: 'S’inscrire',
                        color: 'light',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}