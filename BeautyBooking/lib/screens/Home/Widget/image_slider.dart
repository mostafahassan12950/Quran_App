import 'dart:async'; // Import to use Timer
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  final Function(int) onChange;
  final int currentSlide;

  const ImageSlider({
    super.key,
    required this.currentSlide,
    required this.onChange,
  });

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late PageController _pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.currentSlide);

    // Set the timer to change slides every 3 seconds (3000 milliseconds)
    _timer = Timer.periodic(Duration(seconds: 3), _changeSlideAutomatically);
  }

  @override
  void dispose() {
    _timer.cancel(); // Don't forget to cancel the timer to prevent memory leaks
    _pageController.dispose();
    super.dispose();
  }

  // Function to automatically change the slide
  void _changeSlideAutomatically(Timer timer) {
    int nextPage = widget.currentSlide + 1;
    if (nextPage >= 2) {
      nextPage = 0; // Reset to the first image after reaching the end
    }
    _pageController.animateToPage(nextPage,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    widget.onChange(nextPage); // Update the `currentSlide` index externally
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: widget.onChange,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset("images/1733035685_6479.webp", fit: BoxFit.cover),
                Image.asset("images/1733041895_9421.webp", fit: BoxFit.cover),
              
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                2,
                (index) => AnimatedContainer(
                  duration: const Duration(microseconds: 300),
                  width: widget.currentSlide == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: widget.currentSlide == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
