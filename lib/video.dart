import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'player.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vodeo"),
      ),
      body: ListView(children: <Widget>[
        ChewList(
          videoPlayerController: VideoPlayerController.network("https://r3---sn-05goxu-afvl.googlevideo.com/videoplayback?expire=1589251937&ei=Abu5Xp2iAsyEv_IPo52S6Ak&ip=95.213.199.174&id=o-AEWpF502RFQF9ktn6yl7IV54hcQbUOQfa4Z1iSnDiYJg&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&gir=yes&clen=14856055&ratebypass=yes&dur=214.180&lmt=1580069282939511&fvip=3&c=WEB&txp=5531432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgfjQ7ILZ9pUKpgDbkxZbloARE5IP-E7ssLvXJVrWl2DICIEUhHZtpKfuQkDtPvUfK-21e1A7DKvjBSHsZpq4NWnzB&video_id=0-7IHOXkiV8&title=KALEO+-+Way+Down+We+Go+%28Official+Video%29&redirect_counter=1&rm=sn-axqdez&req_id=c8e1d1553a05a3ee&cms_redirect=yes&ipbypass=yes&mh=It&mip=194.44.223.210&mm=31&mn=sn-05goxu-afvl&ms=au&mt=1589230472&mv=m&mvi=2&pcm2cms=yes&pl=24&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pcm2cms,pl&lsig=AG3C_xAwRQIgNnpkgB3EE-3VGMezMebXqf6RqWo7yzdkAALqyQIPxBICIQDgqH0wqHolyIMlG0tHU_tGkIQTgxzay5OF18BqsdwiJw%3D%3D"),
        ),
        ChewList(
          videoPlayerController: VideoPlayerController.asset("video/video.mp4"),
        )
      ],),
    );
  }
}
