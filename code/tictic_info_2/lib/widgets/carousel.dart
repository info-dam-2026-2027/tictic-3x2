import 'package:flutter/material.dart';
import 'package:tictic_info_2/styles/colors.dart';

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
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    controller.animateToPage(i, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: _currentIndex == i ? kCarouselLineActive : kCarouselLineInactive,
                      ),
                      height: 2,
                      width:
                      (MediaQuery.of(context).size.width / _items.length) - 32,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}