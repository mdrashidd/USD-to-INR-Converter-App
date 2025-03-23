import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold (
        appBar : AppBar(
          title :const Text('Container Widget'),
        ),

        body : Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children :[ Container(
            ing :const EdgeInsets.all(20),
            margin : const EdgeInsets.all(10),
            color : Colors.blueGrey,
            child : const Text(
                'This is a container',
              style: TextStyle(color:Colors.white,fontSize:20),
          ),
        ),
      ],
        ),
      ),
    );
  }
}
