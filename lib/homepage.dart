import 'package:flutter/material.dart';
import 'package:livamoyen/first_page.dart';
import 'package:livamoyen/x/Xcustom.dart';
import 'package:livamoyen/x/Xform.dart';
import 'package:livamoyen/y/Ycustom.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String?avrege;
 List matiere=[ 
    {"type": "2", "name": "math discrete"},
    {"type": "2", "name": "probabilité"},
    {"type": "2", "name": "transmission"},
    {"type": "2", "name": "paradigme"},
    {"type": "2", "name": "algorithme"},
    {"type": "3", "name": "BDD"},
    {"type": "2", "name": "architecture"},
    {"type": "3", "name": "systeme d'exploitation"},
    {"type": "2", "name": "francais"},
    {"type": "2", "name": "anglais"},
    {"type": "2", "name": "gestion"},];
    List cal=["","","","","","","","","","",""];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF19182B),
      body:ListView(
        children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Text("If a subject does not contain a DS score, then the TP = DS",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),
            
            ...List.generate(matiere.length,(i){
              if(matiere[i]["type"]=="3"){
                return     Xcustom(
            onCalculate: (value) {
              setState(() {
                cal[i]=value;
              });
            },
           matiere:  matiere[i]["name"]
          );
              }
              else{
                  return     Ycustom(
            onCalculate: (value) {
              setState(() {
                 cal[i]=value;
              });
            },
             matiere:  matiere[i]["name"]
          );

              }

            }),
          
          MaterialButton(
            color: Color(0xFF6273E0),
          child: Text("CALCULER",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
          onPressed: (){

          double s=0;
            print("longeur cal ${cal.length}");
            print(matiere.length);
           for(int i=0;i<cal.length;i++){
            if(matiere[i]["name"]=="math discrete"){
              s+=(double.tryParse(cal[i]) ?? 0)*1.5;
            }
            else if(matiere[i]["name"]=="probabilité"){
              s+=(double.tryParse(cal[i]) ?? 0)*2;
            }
            else if(matiere[i]["name"]=="transmission"){
              s+=(double.tryParse(cal[i]) ?? 0)*1.5;
            }
            else if(matiere[i]["name"]=="paradigme"){
              s+=(double.tryParse(cal[i]) ?? 0)*3;
            }
            else if(matiere[i]["name"]=="algorithme"){
              s+=(double.tryParse(cal[i]) ?? 0)*2;
            }
            else if(matiere[i]["name"]=="BDD"){
              s+=(double.tryParse(cal[i]) ?? 0)*3;
            }
            else if(matiere[i]["name"]=="architecture"){
              s+=(double.tryParse(cal[i]) ?? 0)*2;
            }
            else if(matiere[i]["name"]=="systeme d'exploitation"){
              s+=(double.tryParse(cal[i]) ?? 0)*3;
            }
            else if(matiere[i]["name"]=="francais"){
              s+=(double.tryParse(cal[i]) ?? 0)*1;
            }
            else if(matiere[i]["name"]=="anglais"){
              s+=(double.tryParse(cal[i]) ?? 0)*1;
            }
            else if(matiere[i]["name"]=="gestion"){
              s+=(double.tryParse(cal[i]) ?? 0)*1;
            }
           }
        // print(cal.length);
        // print(s/21);
        // print(cal);
        double res=(s/21);
            if(res<10)
            {
             showDialog(
              
                 
                    context: context,
                   builder: (context)=>AlertDialog(
                    backgroundColor:Color(0xFF6273E0) ,
                    
                    title:Column(
                      children: [
                         Text("juillia testana fik",
                          style: TextStyle(fontSize: 30,
                      color:const Color.fromARGB(255, 255, 255, 255) 
                    ),
                         
                    textAlign: TextAlign.center,),
                     Text(res.toString().length>5?res.toString().substring(0,5):res.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30,
                      color:const Color.fromARGB(255, 255, 255, 255) 
                    ),
                    ),
                      ],
                    ),
                    
                    
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>homepage()), (route) => false);
                       }, 
                       child: Text("again",style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255)),),),
                         TextButton(onPressed: (){
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>firstpage()), (route) => false);
                       }, 
                       child: Text("home",style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255)),),),
                       ],
                    

                   )
                   );
            }
            else if(res>=10&&res<=11)
            {
             showDialog(
              
                 
                    context: context,
                   builder: (context)=>AlertDialog(
                    backgroundColor:Color(0xFF6273E0) ,
                    
                    title:Column(
                      children: [
                         Text("bara hak salktha",style: TextStyle(
                          color: Colors.white,fontSize: 20),
                    textAlign: TextAlign.center,),
                     Text(res.toString().length>5?res.toString().substring(0,5):res.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30,
                      color:const Color.fromARGB(255, 255, 255, 255) 
                    ),
                    ),
                      ],
                    ),
                    
                    
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>homepage()), (route) => false);
                       }, child: Text("again",style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 255, 255, 255)),),),
                          TextButton(onPressed: (){
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>firstpage()), (route) => false);
                       }, 
                       child: Text("home",style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255)),),),
                       ],
                    

                   )
                   );
            }
            else if(res>11&&res<=13)
            {
             showDialog(
              
                 
                    context: context,
                   builder: (context)=>AlertDialog(
                    backgroundColor:Color(0xFF6273E0) ,
                    
                    title:Column(
                      children: [
                         Text("hak makch aadi",style: TextStyle(
                          color: Colors.white,fontSize: 20),
                    textAlign: TextAlign.center,),
                     Text(res.toString().length>5?res.toString().substring(0,5):res.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30,
                      color:const Color.fromARGB(255, 255, 255, 255) 
                    ),
                    ),
                      ],
                    ),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>homepage()), (route) => false);
                       }, child: Text("again",style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 255, 255, 255)),),),
                          TextButton(onPressed: (){
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>firstpage()), (route) => false);
                       }, 
                       child: Text("home",style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255)),),),
                       ],
                    

                   )
                   );
            }
            else if(res>13)
            {
             showDialog(
              
                 
                    context: context,
                   builder: (context)=>AlertDialog(
                    backgroundColor:Color(0xFF6273E0) ,
                    
                    title:Column(
                      children: [
                         Text("esprit concours",style: TextStyle(
                          color: Colors.white,fontSize: 20),
                    textAlign: TextAlign.center,),
                     Text(res.toString().length>5?res.toString().substring(0,5):res.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30,
                      color:const Color.fromARGB(255, 255, 255, 255) 
                    ),
                    ),
                      ],
                    ),
                    
                    
                    actions: [
                      TextButton(onPressed: (){
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>homepage()), (route) => false);
                       }, child: Text("again",style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 255, 255, 255)),),),
                          TextButton(onPressed: (){
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>firstpage()), (route) => false);
                       }, 
                       child: Text("home",style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255)),),),
                       ],
                    

                   )
                   );
            }
          },
          )
        ],
      )
        
      
    );
  }
}