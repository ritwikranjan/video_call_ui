import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CallUI(),
      ),
    );
  }
}

class CallUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 80, bottom: 20),
          child: Center(
            child: Image.network(
              'https://scontent.fpat1-1.fna.fbcdn.net/v/t1.0-9/1560594_677563408963190_884312139_n.jpg?_nc_cat=110&_nc_sid=8bfeb9&_nc_ohc=LNcnvcszEqYAX_ciDMl&_nc_ht=scontent.fpat1-1.fna&oh=912f0d3a8a96e3d1995e8c99318ecf8a&oe=5F50F8A1',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            color: Colors.green,
            padding: EdgeInsets.only(top: 40, bottom: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Dr. Manoj Kumar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Calling',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white,
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ContainerIcon(icon: Icons.mic),
                ContainerIcon(icon: Icons.videocam),
                ContainerIcon(icon: Icons.chat_bubble),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 120,
          child: Container(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFFE455C),
            ),
            child: Icon(
              Icons.call_end,
              size: 35,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

class ContainerIcon extends StatelessWidget {
  final IconData icon;

  const ContainerIcon({Key key, @required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF8F5FD),
      ),
      child: Icon(
        icon,
        size: 27,
        color: Color(0xFF00B1F5),
      ),
    );
  }
}
