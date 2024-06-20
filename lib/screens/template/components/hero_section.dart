import 'package:flutter/material.dart';

import '../../../components/fixed_background.dart';
import '../../../components/full_screen.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  _HeroSectionState createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  final ScrollController _scrollController = ScrollController();
  int _currentSection = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final screenSize = MediaQuery.of(context).size;
    final scrollPosition = _scrollController.position.pixels;
    final sectionHeight = screenSize.height;

    final newSection = (scrollPosition / sectionHeight).round();
    if (newSection != _currentSection) {
      setState(() {
        _currentSection = newSection;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final List<Widget> sections = [
      FullScreenSection(
        child: Container(
          height: screenSize.height,
          color: Colors.transparent,
          child: const Center(
            child: Text(
              "Keanu's Contracting",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      FullScreenSection(
        child: Container(
          height: screenSize.height,
          color: Colors.transparent,
          child: const Center(
            child: Text(
              "More Content Here",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      FullScreenSection(
        child: Container(
          height: screenSize.height,
          color: Colors.transparent,
          child: const Center(
            child: Text(
              "Even More Content",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      FullScreenSection(
        child: Container(
          height: screenSize.height,
          color: Colors.blue,
          child: const Center(
            child: Text(
              "Solid Blue Background",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      FullScreenSection(
        child: Container(
          height: screenSize.height,
          color: Colors.green,
          child: const Center(
            child: Text(
              "Solid Green Background",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ];

    final List<String> imageUrls = [
      'assets/images/contractor_background.jpeg',
      'assets/images/contractor_background2.jpg',
      'assets/images/contractor_background3.jpg',
    ];

    final bool isImageBackground = _currentSection % 2 ==
        0; // Alternate between image and solid backgrounds

    return SizedBox(
      width: screenSize.width,
      height: screenSize.height,
      child: Stack(
        children: <Widget>[
          // Background image or solid color
          Positioned.fill(
            child: AnimatedSwitcher(
              duration: const Duration(
                  milliseconds: 500), // Adjust duration as needed
              child: isImageBackground
                  ? FixedBackground(
                      imageUrl: imageUrls[_currentSection ~/
                          2 %
                          imageUrls.length], // Calculate the correct index
                    )
                  : Container(
                      color: _currentSection == 3
                          ? Colors.blue
                          : (_currentSection == 4
                              ? Colors.green
                              : Colors.transparent),
                      key:
                          UniqueKey(), // Ensure a unique key to trigger transition
                    ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            ),
          ),
          // Scrollable content
          Positioned.fill(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: sections,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Section {
  final Widget content;
  final String? imageUrl;
  final Color bgColor;

  const Section(
    this.bgColor, {
    required this.content,
    this.imageUrl,
  });
}
