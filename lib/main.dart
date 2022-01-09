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
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Stateful Widget"),backgroundColor: Colors.orange,
    ));
  }

}

