import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constrain){
          if (constrain.maxWidth < 1000) {
            return Mobyle();
          }
          return Desktop();
        },
      )
      
    );
  }
}

class Mobyle extends StatefulWidget {
  @override
  _MobyleState createState() => _MobyleState();
}

class _MobyleState extends State<Mobyle> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset('image/rik-i-morti--what.jpg'),
          Text("Morti Smit", style: TextStyle(fontSize: 35, height: 1.5),),
          Text("Grandson of scientist", style: TextStyle(fontStyle: FontStyle.italic),),
          Expanded(child: Button()),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     FlatButton(child: Text("About me"), onPressed:() {obnova(1);},),
          //     FlatButton(child: Text("Work"), onPressed:() {obnova(2);},),
          //     FlatButton(child: Text("Contact"), onPressed: (){obnova(3);},),
          //   ]
          // ),
          // Expanded(
          //   child: telo,
          // )
        ],
      ),
      
    );
  }
}
class Desktop extends StatefulWidget {
  @override
  _DesktopState createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {

  @override
  Widget build(BuildContext context) {
    // void obnova(int click){
    //   switch (click){
    //    case 1: telo = AboutMe(); break;
    //    case 2: telo = Work(); break;
    //    case 3: telo = Contact(); break;
   
    //   }
    //   setState((){});
    // }

    return Scaffold(
      body: Row(children: <Widget>[
        Expanded(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('image/rik-i-morti--what.jpg'),
              Text("Morti Smit", style: TextStyle(fontSize: 35, height: 1.5),),
              Text("Nephew", style: TextStyle(fontStyle: FontStyle.italic),),
            ],
          ),
        ),
        Expanded(child: Button(),
            //       child: Column(
            // children: <Widget>[
            //   Expanded(
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: <Widget> [
            //         FlatButton(child: Text("About me"), onPressed:() {obnova(1);},),
            //         FlatButton(child: Text("Work"), onPressed:() {obnova(2);},),
            //         FlatButton(child: Text("Contact"), onPressed: (){obnova(3);},),
            //       ]
            //     ),
      //         ),
            
          
      //     Expanded(flex: 10,

      //       child: telo,
      //     )]),
        )
      ],)
    );
  }
}

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget telo;
  Widget build(BuildContext context) {
  void obnova(int click){
    switch (click){
      case 1: telo = AboutMe(); break;
      case 2: telo = Work(); break;
      case 3: telo = Contact(); break;   
    }
    setState((){});
  }
    return Column(
      children: <Widget>[
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    FlatButton(child: Text("About me"), onPressed:() {obnova(1);},),
                    FlatButton(child: Text("Work"), onPressed:() {obnova(2);},),
                    FlatButton(child: Text("Contact"), onPressed: (){obnova(3);},),
                  ]
                ),
              ),
            
          
          Expanded(

            child: telo,
          )]
      
      
    );
  }
}

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("1"),
    );
  }
}

class Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("2"),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("3"),
    );
  }
}