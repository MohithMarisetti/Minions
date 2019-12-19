import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'ClipImage.dart';
import 'character.dart';
import 'constants.dart';

class DetailsPage extends StatefulWidget {
  final Character character;
  DetailsPage({this.character});
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  // This function is used to get the clip images for the given character
  List<Expanded> getClipImages() {
    List<Expanded> clipImages = [];
    for (var eachImage in widget.character.clipImages) {
      clipImages.add(
        Expanded(
          child: ClipImage(imagePath: eachImage),
        ),
      );
    }
    return clipImages;
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        canvasColor: Colors.white,
      ),
      home: Scaffold(
        body: SlidingUpPanel(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40.0),
          ),
          panel: Container(
            width: double.infinity,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 100.0, left: 10.0, right: 10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Clips (16)',
                          style: kClipsTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: getClipImages(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          collapsed: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Clips (16)',
                    style: kClipsTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.expand_less,
                      size: 30.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          body: SafeArea(
            child: Container(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: widget.character.colors,
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight)),
                child: SingleChildScrollView(
                  child: Material(
                    color: Colors.transparent,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, bottom: 100.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: Material(
                                  color: Colors.transparent,
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.close),
                                    color: Colors.white.withOpacity(0.8),
                                    iconSize: 31.0,
                                  ),
                                ),
                              ),
//                    Padding(
//                      padding: EdgeInsets.only(left: screenWidth * 0.35),
//                      child: Image.asset(
//                        widget.character.imagePath,
//                        width: screenWidth * 0.45,
//                      ),
//                    ),
                              Hero(
                                tag: widget.character.name,
                                child: DecoratedBox(
                                  child: Container(
                                    height: screenHeight * 0.4,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      alignment: Alignment.topRight,
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                          widget.character.imagePath),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                widget.character.name,
                                style: kCharacterNameTextStyle,
                              ),
                              Text(
                                widget.character.description,
                                style: kClickNameTextStyle,
                              ),
                            ],
                          ),
                        ),

                        //Clips Container below
//                    Container(
//                      decoration: BoxDecoration(
//                        borderRadius: BorderRadius.only(
//                          topLeft: Radius.circular(45),
//                          topRight: Radius.circular(45.0),
//                        ),
//                        color: Colors.white,
//                      ),
//                      //height: screenHeight * 0.3,
//                      child: Padding(
//                        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
//                        child: Column(
//                          crossAxisAlignment: CrossAxisAlignment.stretch,
//                          children: <Widget>[
//                            RichText(
//                              text: TextSpan(
//                                children: <TextSpan>[
//                                  TextSpan(
//                                    text: 'Clips',
//                                    style: kClipsTextStyle,
//                                  ),
//                                  TextSpan(text: '  '),
//                                  TextSpan(
//                                    text: '(16)',
//                                    style: kClipsTextStyle,
//                                  )
//                                ],
//                              ),
//                            ),
//                            Column(
//                              children: <Widget>[
//                                Row(
//                                  children: getClipImages(),
//                                ),
//                              ],
//                            ),
//                          ],
//                        ),
//                      ),
//                    ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
