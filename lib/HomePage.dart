import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:web_portfolio/VideoScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var contain;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        child: Stack(
          children: <Widget>[
            ClipPath(
              child: Container(
                color: Colors.blue[400],
                height: 140,
                width: screenSize.width,
              ),
              clipper: WaveClipperOne(),
            ),
            ClipPath(
              child: Container(
                color: Colors.blue[600],
                height: 120,
                width: screenSize.width,
              ),
              clipper: WaveClipperTwo(),
            ),
            Positioned(
              child: ClipPath(
                child: Container(
                  color: Colors.blue[400],
                  height: 80,
                  width: screenSize.width,
                ),
                clipper: WaveClipperOne(reverse: true),
              ),
              bottom: 0,
              top: 0,
            ),
            Positioned(
              child: ClipPath(
                child: Container(
                  color: Colors.blue[600],
                  height: 90,
                  width: screenSize.width,
                ),
                clipper: WaveClipperTwo(reverse: true),
              ),
              bottom: 0,
              top: 0,
            ),
            screenSize.width < 580
                ? Container(
                    width: screenSize.width,
                    height: screenSize.height,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 64),
                          height: 240,
                          child: Image.asset(
                            "assets/web.png",
                            fit: Boxfit.contain,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 64),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Easy Approach",
                                style: TextStyle(
                                  fontSize: kIsWeb ? 64 : 32,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Easy Approach makes it easy for every one to dessiminate knowledge, and making "
                                " difficult problems easy to solve",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 1.0,
                                    color: Colors.white54),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              FlatButton.icon(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => VideoScreen()),
                                  );
                                },
                                icon: Icon(Icons.video_library),
                                label: Text("See all Video"),
                                color: Colors.grey[800],
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(32))),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                  )
                : Container(
                    height: screenSize.height,
                    width: screenSize.width,
                    child: Column(
                      children: [
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 64),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Easy Approach",
                                    style: TextStyle(
                                        fontSize: 64,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    "Easy Approach makes it easy for every one to dessiminate knowledge, and making "
                                    " difficult problems easy to solve",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        letterSpacing: 1.0,
                                        color: Colors.white54),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  FlatButton.icon(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                VideoScreen()),
                                      );
                                    },
                                    icon: Icon(Icons.video_library),
                                    label: Text("See all Video"),
                                    color: Colors.grey[800],
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(32))),
                                  )
                                ],
                              ),
                            ))
                          ],
                        )),
                        Expanded(
                            child: Container(
                          child: Image.asset(
                            "assets/web.png",
                            fit: BoxFit.contain,
                          ),
                        ))
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class Boxfit {
  static var contain;
}
