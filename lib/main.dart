import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Text("Hello Donuts"),
    )
  );
}

class AwesomeButton extends StatefulWidget{
  const AwesomeButton({Key? key}) : super(key: key);
  
 
  @override
  AwesomeButtonState createState()=>AwesomeButtonState();
}

class AwesomeButtonState extends State<AwesomeButton>{
  int counter=0;
  List<String>strings=["Flutter","Is","Awesome"];
  String displayString="";
  void onPressed(){
    setState((){
      displayString=strings[counter];
      counter=counter<2? counter+1:0;

    });
  }

  // get onPressed => null;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Stateful Widget"),backgroundColor: Colors.orange,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(displayString, style:const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              const Padding(padding: EdgeInsets.all(10.0))
              RaisedButton(
                child: const Text("Press me", style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0),),
                color: Colors.blue,
                onPressed: onPressed,
              )
            ],
          ),
        ),
      )
    ));
  }

}

