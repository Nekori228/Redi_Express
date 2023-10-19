import 'package:flutter/cupertino.dart';

class _YourWidgetState extends State<YourWidget> {
  PageController _pageController = PageController();
  int activePage = 0;

  List<Map<String, dynamic>> images = [
    {'image': 'path/to/image1.jpg', 'description': 'Description 1'},
    {'image': 'path/to/image2.jpg', 'description': 'Description 2'},
    // ... другие изображения с описаниями
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: PageView.builder(
        itemCount: images.length,
        pageSnapping: true,
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            activePage = page;
          });
        },
        itemBuilder: (context, pagePosition) {
          return slider(
            images[pagePosition]['image'],
            images[pagePosition]['description'],
            pagePosition == activePage,
          );
        },
      ),
    );
  }

  Widget slider(String imagePath, String description, bool active) {
    // ваш виджет с изображением и текстом
    // используйте imagePath, description и active внутри этого виджета
  }
}
