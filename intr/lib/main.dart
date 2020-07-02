import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intr/part1.dart';
import 'package:intr/part2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Part1(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text("Today's Workout",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          ),
          Part2()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
    
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.running,color: Colors.grey,),
            title: Text('Exercise',style: TextStyle(color: Colors.grey),)
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.arrowDown,color: Colors.grey),
            title: Text('Blogs',style: TextStyle(color: Colors.grey))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Colors.grey),
            title: Text('Settings',style: TextStyle(color: Colors.grey))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.blur_circular,color: Colors.grey),
            title:  Text('Profile',style: TextStyle(color: Colors.blue))
          )
        ],
        onTap: (index){
            print(index);
        },
      ) ,
      
    );
  }
}
