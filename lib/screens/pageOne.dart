import 'package:flutter/material.dart';

import 'pageTwo.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  Widget itemOption(String titre, Color titrecolor, Color iconColor) {
    return Container(
      margin: EdgeInsets.only(right: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            titre,
            style: TextStyle(
              color: titrecolor,
              fontSize: 18,
            ),
          ),
          Icon(Icons.brightness_1, size: 9, color: iconColor),
        ],
      ),
    );
  }

  Widget itemSpecs(IconData icon, String chiffr) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(icon, size: 25, color: Colors.white),
          SizedBox(height: 10),
          Text(chiffr, style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }

  Widget itemTrack(String titre, String listen, String duree, Color colorIcon) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PageTwo()));
            },
            child: Container(
              height: 80,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.grey[300])),
              child: Icon(Icons.play_arrow, color: Colors.black),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  titre,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  listen,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              duree,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.favorite, color: colorIcon),
          ),
        ],
      ),
    );
  }

  // var _songs;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   initPlayer();
  // }

  // void initPlayer() async {
  //   super.initState();
  //   var songs = await MusicFinder.allSongs();
  //    songs = List.from(songs);
  //   setState(() {
  //     _songs = songs;
  //   });
  // }

  // Future _playLocal() async{
  //   final result = await audioPlayer.play(localFilePath), isLocal:true);
  //   if (result == 1) setState(()  => PlayersState.playing
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios, color: Colors.black, size: 30),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Snowmine",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      itemOption("Overview", Colors.blue, Colors.blue),
                      itemOption("Tracks", Colors.grey[400], Colors.white),
                      itemOption("Albums", Colors.grey[400], Colors.white),
                      itemOption(
                          "Similar Arts", Colors.grey[400], Colors.white),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Popular This week",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 235,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[300],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Snowmine',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Let me in',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text('3:39',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.7),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 50),
                              child: Icon(Icons.expand_less,
                                  color: Colors.white, size: 40),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width / 1.22,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                itemSpecs(Icons.play_arrow, 240.toString()),
                                itemSpecs(Icons.favorite, 150.toString()),
                                itemSpecs(Icons.file_download, 240.toString()),
                                itemSpecs(Icons.share, 240.toString()),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Top Tracks",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                itemTrack('Let Me In', "426 Listen", " 3:39", Colors.blue),
                itemTrack('Colombus', "80 Listen", " 4:12", Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
