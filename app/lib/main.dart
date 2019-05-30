import 'package:app/NumberConverter.dart';
import 'package:app/RandomNumber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: ButtonClickEvent(),
    );
  }
}

class ButtonClickEvent extends StatefulWidget {
  @override
  ButtonClickEventState createState() {
    return new ButtonClickEventState();
  }
}

List<Color> buttonColors = [Colors.red, Colors.yellow, Colors.green, Colors.pink, Colors.purple, Colors.redAccent];
class ButtonClickEventState extends State<ButtonClickEvent> {
  int countValue = 1;
 Color buttonColor = buttonColors[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo Dart Language'),
        ),
        body: Center(

          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
                child: Center(
                    child: Text(countValue.toString(),
                        style: TextStyle(fontSize: 25.0))),
)           ,
            Container(
              child: Text(NumberConverter.instance.convertNumberToVietnamesLanguages(countValue)),
            ),
            RaisedButton(
              
              child: Text('RANDOM NUMBER', style: TextStyle(
                color: Colors.white,
              ),),
              onPressed: () {
                //Insert event to be fired up when button is clicked here
                //in this case, this increments our `countValue` variable by one.
                setState(() => {
                  countValue = RandomeNumber.instance.generateNumber(),
                  buttonColor = buttonColors[RandomeNumber.instance.generateNumderInRange(buttonColors.length)]

                });
              },
              color: buttonColor,
            ),
          ],
        )));
  }
}