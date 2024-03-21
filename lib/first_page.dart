import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:livamoyen/homepage.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFF19182B),centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.calculate_sharp,size: 30,color: Colors.white,),
          Padding(
            padding: const EdgeInsets.only(left: 1),
            child: Text("LivaMoyenne",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
          ),
          IconButton(onPressed: (){
             if(Platform.isAndroid){
                      SystemNavigator.pop();
                      }

          },icon:Icon(Icons.exit_to_app_rounded,size: 30,color: Colors.white,))
        ],
      ),),
      backgroundColor: Color(0xFF19182B),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(bottom: 30),
              child: Text("DEVELOPPED BY SAEB AND ZNAIDI",style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[400]),),),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                 child: MaterialButton(
                  color: Color(0xFF6273E0),
                  onPressed: (){
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>homepage()), (route) => false);
                  },
                  child: Text("SEMESTRE 1",style: TextStyle(fontSize: 30,color: Colors.white),),)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                 child: MaterialButton(
                  color: Color(0xFF6273E0),
                  onPressed: (){
                
                  },
                  child: Text("SEMESTRE 2",style: TextStyle(fontSize: 30,color: Colors.white)),)
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}