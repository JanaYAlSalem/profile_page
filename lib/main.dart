import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // body structure
    return Scaffold(
      // Wrap with widget [SafeArea] because save the space bar
      body: SafeArea(
        // Padding space start Column
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // to start text from left
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(),
              Text("About", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
              //SizedBox: to space between texts
              SizedBox(height: 8,),
            Text("Mobile Developer",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.grey[700])),
            Row()],
          ),
        ),
      ),
    );
  }
}



