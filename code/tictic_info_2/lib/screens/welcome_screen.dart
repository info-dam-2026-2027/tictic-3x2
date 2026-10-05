import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_info_2/styles/colors.dart';
import 'package:tictic_info_2/styles/size.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  // Déclarer un tableau
  final _items = ['Test 1', 'Test 2', 'Test 3', 'Test 4'];

  final PageController controller = PageController(); // Déclarer le controller

  // Déclarer index actuel
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: PageView.builder(
            controller: controller,
            itemCount: _items.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(_items[i]),
              );
            },
            onPageChanged: (i) {
              setState(() {
                _currentIndex = i;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < _items.length; i++)
                Container(
                  decoration: BoxDecoration(
                      color: _currentIndex == i ? kCarouselLineActive : kCarouselLineInactive,
                  ),
                  height: 2,
                  width:
                      (MediaQuery.of(context).size.width / _items.length) - 32,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
