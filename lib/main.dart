import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Facebook',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Facebook', style: TextStyle(color: Colors.indigo[800], fontSize: 50.0, fontWeight: FontWeight.bold ),),
            SizedBox(height: 30,),
            SizedBox(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Mobile number or email address",
                  labelStyle: TextStyle(color: Colors.black45),
                  fillColor: Colors.black12,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black38),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(color: Colors.black26),
                  ),
                ),
              )
            ),
            SizedBox(height: 10.0,),
            SizedBox(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black45),
                  fillColor: Colors.black12,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black38),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(color: Colors.black26),
                  ),
                ),
              )
            ),
            SizedBox(height: 15.0,),
            SizedBox(
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.indigo[800]),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0))),
                  ),
                onPressed: () {},  
                child: Text('Log in', style: TextStyle(color: Colors.white),)),
            ),

            SizedBox(height: 20,),
            Text("Forgotten password?", style: TextStyle(color: Colors.blue[600]),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(
                child: Container(color: Colors.black45),
                height: 3,
                width: 140)
                ,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Or"),
              ),
              SizedBox( 
                child: Container(color: Colors.black45),
                height: 3,
                width: 140),
            ],),

            SizedBox(height: 30,),
            SizedBox(
              width: 280,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green[600]),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)))),
                onPressed: () {}, 
                child: Text('Create New Account', style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 80,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text("About", style: TextStyle(color: Colors.black),),
              Text('Help', style: TextStyle(color: Colors.black),),
              Text("More", style: TextStyle(color: Colors.black),),
            ],),
            SizedBox(height: 50,),
            Text("Meta©2022", style: TextStyle(color: Colors.black54),),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
