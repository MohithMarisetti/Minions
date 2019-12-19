import 'package:flutter/material.dart';

class ClipImage extends StatelessWidget {
  final String imagePath;

  const ClipImage({this.imagePath});
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
      child: Container(
        height: screenHeight * 0.18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
