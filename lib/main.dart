import 'package:flutter/material.dart';

import 'DetailsPage.dart';
import 'character.dart';
import 'constants.dart';

void main() => runApp(MyApp(
      cards: kMinionCharacters,
    ));

class MyApp extends StatelessWidget {
  final List<Character> cards;

  const MyApp({this.cards});

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < cards.length; i++) {
      precacheImage(AssetImage(cards[i].imagePath), context);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        canvasColor: Colors.white,
      ),
      home: HomePage(
        cards: cards,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final List<Character> cards;
  HomePage({this.cards});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;

  int _previousPage;
  var screenHeight;
  var screenWidth;

  List<Card> getCharacterCards() {
    List<Card> charactersCardsList = List<Card>();
    for (var i = 0; i < widget.cards.length; i++) {
      charactersCardsList.add(Card(
        character: widget.cards[i],
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ));
    }
    return charactersCardsList;
  }

  _onScroll() {
//    if (_pageController.page.toInt() == _pageController.page) {
//      _previousPage = _pageController.page.toInt();
//      _pageController.animateToPage(_pageController.page.toInt(),
//          duration: Duration(milliseconds: 500), curve: Curves.bounceInOut);
//    }
//    widget.notifier?.value = _pageController.page - _previousPage;
  }

  @override
  void initState() {
    // TODO: implement initState
//    _pageController = PageController()..addListener(_onScroll);
//    _previousPage = _pageController.initialPage;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
//            Navigator.push(
//              context,
//              MaterialPageRoute(
//                  builder: (  qcontext) => MyApp(cards: kRainbow6Characters)),
//            );
          },
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
            child: Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Icon(
                Icons.search,
                size: 31.0,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 3.0),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Despicable Me', style: kMainTextTextStyle),
                        TextSpan(text: '\n'),
                        TextSpan(text: 'Characters', style: kSubTextTextStyle),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: PageView(
//                    onPageChanged: (pos) {
//                      _pageController.animateToPage(pos,
//                          duration: Duration(milliseconds: 300),
//                          curve: Curves.decelerate);
//                    },
//                    controller: _pageController,
                    children: getCharacterCards(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//class Home extends StatelessWidget {}

class Card extends StatelessWidget {
  const Card(
      {@required this.screenWidth,
      @required this.screenHeight,
      @required this.character});

  final double screenWidth;
  final double screenHeight;
  final Character character;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsPage(character: character)),
          );
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                width: screenWidth * 0.92,
                height: screenHeight * 0.53,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                      colors: character.colors,
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight),
                ),
              ),
            ),
            Positioned(
              right: 20.0,
              left: 20.0,
              top: 0.0,
              child: Hero(
                tag: character.name,
                child: DecoratedBox(
                  child: Container(
                    height: screenHeight * 0.52,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.bottomRight,
                      fit: BoxFit.contain,
                      image: AssetImage(character.imagePath),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, bottom: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      character.name,
                      style: kCharacterNameTextStyle,
                    ),
                    Text(
                      'Click to read more',
                      style: kClickNameTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    double controlPointValue = 25;

    var clippedPath =
        Path(); // quadraticBezierTo(controlx, controly, x2,y2) // This function draws a curve from point (x1,y1) to (x2,y2) with control points (controlx,controly)
    clippedPath.moveTo(width, controlPointValue * 2);
    clippedPath.quadraticBezierTo(width - controlPointValue * 0.2,
        controlPointValue * 0.05, width - controlPointValue * 2, 0);
    clippedPath.lineTo(controlPointValue * 2.5, controlPointValue * 3);
    clippedPath.quadraticBezierTo(controlPointValue * 0.15,
        controlPointValue * 3.4, 0, controlPointValue * 6);
    clippedPath.lineTo(0, height);
    clippedPath.lineTo(width, height);

    clippedPath.close();
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
