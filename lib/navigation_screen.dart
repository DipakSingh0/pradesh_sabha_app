import 'package:flutter/material.dart';
import 'package:pradesh_app/screen1/pradeshsabhamemberScreen.dart';
import 'package:pradesh_app/screen2/screen2.dart';
import 'package:pradesh_app/screen3/screen3.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Navigation Screen'),
        ),
        body: Center(
          child: Column(
            spacing: 15,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PradeshSabhaMemberScreen())),
                child: Text('Go to Screen 1'),
              ),
              // const SizedBox(height: 15,),
               ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Screen2())),
                child: Text('Go to Screen 2'),
              ),
               ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Screen3())),
                child: Text('Go to Screen 3'),
              ),
               ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PradeshSabhaMemberScreen())),
                child: Text('Go to Screen 1'),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}

