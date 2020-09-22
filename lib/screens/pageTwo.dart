import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  double _slider1Val = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.lightBlue[300],
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios,
                              color: Colors.white, size: 30)),
                      Text(
                        'Song',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white, size: 30),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 720,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 30),
                    Container(
                      height: 220,
                      width: 220,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[300], shape: BoxShape.circle),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Snowmine',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Let me in',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: <Widget>[
                          Text(
                            '0.46',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                              child: Slider(
                            value: this._slider1Val,
                            onChanged: (double value) {
                              setState(() {
                                this._slider1Val = value;
                              });
                            },
                          )),
                          Text(
                            '02:39',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.skip_previous,
                          color: Colors.black,
                          size: 40,
                        ),
                        Icon(
                          Icons.play_arrow,
                          size: 70,
                          color: Colors.blue[300],
                        ),
                        Icon(
                          Icons.skip_next,
                          color: Colors.black,
                          size: 40,
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.shuffle, color: Colors.blue, size: 40),
                          Text(
                            'Lyrics',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.autorenew, color: Colors.grey, size: 40),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
