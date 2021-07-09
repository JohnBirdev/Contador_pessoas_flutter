import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
 
  runApp(MaterialApp(title: "Contador de pessoas", home: Home()));
}

class Home extends StatefulWidget {
  
  Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _conta_pessoa = 0;
  String _infolot = "Pode Entrar!";

  void _lotacao(int lot){
setState(() {
  _conta_pessoa+= lot;

  if(_conta_pessoa > 10){
    _infolot = "Lotado!!!!";
  }
  else{
    _infolot = "Pode Entrar!";
  }
   if(_conta_pessoa < 0){
    _infolot = "Mundo invertido?!";
  }
});
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_conta_pessoa",
              style: TextStyle(
                  color: Colors.lightGreen, fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  ),
                  
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: FlatButton(
                      onPressed: () {
                       _lotacao(1);
                      },
                      child: Text(
                        "+1",
                        style: TextStyle(fontSize: 40, color: Colors.black),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: FlatButton(
                      onPressed: () {
                           _lotacao(-1);
                      },
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 40, color: Colors.black),
                      )),
                ),
              ],
            ),
            Text(
              "$_infolot",
              style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                     decoration: TextDecoration.none,
                  ),
            ),
          ],
        )
      ],
    );
  }
}
