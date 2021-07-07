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
          Image.asset('assets/images/mask.png', color: Colors.red.shade900),
          RaisedButton(
            child: Text('Detectar máscara por imagem',
                style: new TextStyle(
                    fontSize: 20, fontFamily: 'Roboto', color: Colors.white)),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0)),
            color: Colors.red.shade900,
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
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  color: Colors.white,
                )),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0)),
            color: Colors.red.shade900,
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
