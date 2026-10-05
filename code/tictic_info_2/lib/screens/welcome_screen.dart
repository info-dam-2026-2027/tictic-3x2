import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_info_2/styles/colors.dart';
import 'package:tictic_info_2/styles/size.dart';
import 'package:tictic_info_2/widgets/carousel.dart';
import 'package:tictic_info_2/widgets/custom_btn.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: kLogoWelcomePaddingTop,
                  bottom: kLogoWelcomePaddingBottom,
                ),
                child: SvgPicture.asset(
                  'assets/icons/logo.svg',
                  width:
                      MediaQuery.of(context).size.width /
                      kLogoWelcomeSubdiviser,
                ),
              ),
              Carousel(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: kWhite,
                  backgroundColor: kDarkGreen,
                ),
                child: Text('Continuer sans compte'),
              ),
              CustomBtn(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                label: 'Se connecter',
                isDark: false,
              ),
              CustomBtn(
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                label: 'Créer un compte',
                isDark: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
