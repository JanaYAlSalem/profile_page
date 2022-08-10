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
              Row(
                children: [
                  Container(
                      height: 178,
                      width: 128,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("Asset/images/3cWDBHlB_400x400.jpg"),
                        radius: 50,
                      )
                  ),
                  SizedBox(
                    width: 34,
                  ),
                  Column(
                    // to start text from left
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Jana AlSalem",style: TextStyle(fontSize: 34),),
                    Text("Mobile Developer",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                      SizedBox(height: 16,),
                      Row(
                  children: [
                    // icon itemes
                    CustomIconStyle(icon: Icons.mail,),
                    SizedBox(width: 8,),
                    CustomIconStyle(icon: Icons.phone,),
                    SizedBox(width: 8,),
                    CustomIconStyle(icon: Icons.video_call,),
                  ],
                  )
                    ],)
                ],
              ),
              SizedBox(height: 32,),
              Text(
                "About",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500,color: Colors.grey[700]),
              ),
              //SizedBox: to space between texts
              SizedBox(
                height: 8,
              ),
              Text("Mobile Developer",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey[700])),
              Row()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIconStyle extends StatelessWidget {
  const CustomIconStyle({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon,color: Colors.deepPurple,size: 32,),
    height: 48,
    width: 48,
    decoration: BoxDecoration(
      color: Colors.deepPurple[50],
      borderRadius: BorderRadius.circular(16)
    )
      ,);
  }
}
