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
      body: Scaffold( 
        body: Column(
        children: <Widget>[
          Image.asset('image/rik-i-morti--what.jpg'),
          Text("Morti Smit", style: TextStyle(fontSize: 35, height: 1.5),),
          Text("Grandson of scientist", style: TextStyle(fontStyle: FontStyle.italic),),
          Expanded(child: Button()),
        ],
      ),
    )
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
  int click;
  Widget telo;
  Widget build(BuildContext context) {
  void obnova(int i){
    click = i;
    setState((){});
  }
  switch(click){
    case 1: telo = AboutMe(); break;
    case 2: telo = Work(); break;
    case 3: telo = Contact(); break;
    default: telo = AboutMe(); break;
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
      child: Text("Morty is 14 years old and is a student at Harry Herpson High School along with his older sister Summer. Morty seems to be suffering from anxiety and is easily stressed, largely as a result of traumatic experiences during his adventures with Rick. He is often dismissed as idiotic by Rick and others, but is shown to be wiser than his grandfather in terms of understanding people's feelings, and is capable of explosive anger and moral outrage in objection to Rick's attitude and actions."),
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

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nick = TextEditingController();
    TextEditingController mail = TextEditingController();
    TextEditingController com = TextEditingController();
    String ni;
    String ma;
    String co;

    void send(){
      print('function');
      if ((ni != null) && (ni != '') &&(ma!= null) && (ma!='') && (co!=null) && (co!='')) {
       nick.clear();
       mail.clear();
       com.clear();
      }
     
    }
    return Container(
      child: ListView(

        children: <Widget>[
          TextField(onChanged: (s){ni = s;},controller: nick, decoration: InputDecoration(
            labelText: 'nickname',
          ),),
          TextField(onChanged: (s){ma = s;},controller: mail, decoration: InputDecoration(
            labelText: 'e-mail',
          ),),
          TextField(onChanged: (s){co = s;}, controller: com, decoration: InputDecoration(
            labelText: 'coment',
          ),),
           Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(child: Text("Send"), onPressed: (){send();}),
              ],
            ),
        ],
      ),
    );
  }
}