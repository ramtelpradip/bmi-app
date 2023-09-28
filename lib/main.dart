//import 'dart:html';

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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
   var wtController = TextEditingController();
   var ftController = TextEditingController();
   var inController = TextEditingController();
   var result ="";
  @override
  Widget build(BuildContext context) {
      
       return Scaffold(
      appBar: AppBar(
       
        title: Text('yourBMI'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('BMI',style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold, 
              ),),
              TextField(
                controller: wtController ,
                decoration: InputDecoration(
                  label: Text('Enter your weight(Kg)'),
                  prefixIcon: Icon(Icons.line_weight),             //label la keyboard blink hunx
                ),
                keyboardType: TextInputType.numberWithOptions(),
              ),
              SizedBox(
                height: 21
                
              ),
              TextField(
                controller: ftController,
                decoration: InputDecoration(
                  label: Text('Enter your Height(Feet)'),
                  prefixIcon: Icon(Icons.height)
                ),
                keyboardType: TextInputType.numberWithOptions(),
              ),
              SizedBox(height: 21,),
              TextField(
                controller: inController,
                decoration: InputDecoration(
                  label: Text('Enter your height (cm)'),
                  prefixIcon:Icon(Icons.line_axis), 
                ),
                keyboardType:TextInputType.numberWithOptions(),
              ),
              SizedBox(height: 16,),
              ElevatedButton(onPressed: () {
              var wt =wtController.text.toString();
              var ft =ftController.text.toString();
              var inch =inController.text.toString();

              if(wt!=''&& ft!=''&& inch!='')
              {

              }
              else{
                setState(() {
                  result = ' Please fill all the required blank !!';
                });
              }  
              }, child: Text('Calculator'), ),
              
              Text(result, style: TextStyle(fontSize: 20),),//result show garxa
            ],
          ),
        ),
      )
     
       );
       
  }
}
