import 'package:flutter/material.dart';
void main() {
  runApp(MyAppTwo());
}

class MyAppTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  return MaterialApp(
  home : HomeScreen(),
  );
  }
}
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String userInput = '';
  String userInput1='';

  @override
  Widget build(BuildContext context) {
    const  border = OutlineInputBorder(
      borderSide: BorderSide(
          width: 2.0,
          style: BorderStyle.solid,
          color: Color(0xFF250000)
      ),
      borderRadius: BorderRadius.all(Radius.circular(20.0),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,


      appBar: AppBar(
        centerTitle: true,
        title: const Text('Converter',
          style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        backgroundColor: Colors.grey,
        shadowColor: Colors.black38,
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


             Text(
               userInput + ' INR',
              style:const TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold

              ),),


             Padding(
              padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: TextField(
                         onChanged: (tex) {
                           setState(() {
                             userInput1 = tex;
                           });
                         },
                keyboardType:const  TextInputType.numberWithOptions(decimal: true),
                style: const TextStyle(
                    color: Colors.black
                ),
                decoration:const InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  hintText: 'Enter in USD to get in INR',
                  hintStyle: TextStyle(fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                  focusedBorder: border,
                  enabledBorder: border,
                ),


              ),



            ),
            Padding(padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  userInput=(double.parse(userInput1)*82).toStringAsFixed(2);
                  setState(() {
                  });
                  print('Converter is Pressed');
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(400, 60),
                    elevation: 35,
                    shadowColor: Colors.black38,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    side: const BorderSide(color: Colors.grey, width: 2.0)
                ),


                child: const Text('Convert',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      fontSize: 25,
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}