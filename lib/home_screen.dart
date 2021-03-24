import './face_detection_camera.dart';
import './face_detection_image.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.search,
            size: 120.0,
            color: Colors.red.shade300,
          ),
          RaisedButton(
            child: Text('Detectar máscara por imagem',
                style: new TextStyle(
                    fontSize: 15, fontFamily: 'Roboto', color: Colors.black)),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5.0)),
            color: Colors.red.shade300,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FaceDetectionFromImage(),
                ),
              );
            },
          ),
          RaisedButton(
            child: Text('Detectar máscara em tempo real',
                style: new TextStyle(
                    fontSize: 15, fontFamily: 'Roboto', color: Colors.black)),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5.0)),
            color: Colors.red.shade300,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FaceDetectionFromLiveCamera(),
                ),
              );
            },
          ),
        ],
      )),
    );
  }
}
