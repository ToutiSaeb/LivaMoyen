import 'package:flutter/material.dart';
import 'package:livamoyen/x/Xform.dart';
import 'package:math_expressions/math_expressions.dart';

class Xcustom extends StatefulWidget {
 final Function(String) onCalculate;
  final String matiere;

  const Xcustom({super.key, required this.onCalculate, required this.matiere,});

  @override
  State<Xcustom> createState() => _XcustomState();
  
 
}

class _XcustomState extends State<Xcustom> {
   GlobalKey<FormState> keyX=new GlobalKey();
  TextEditingController tc1=new TextEditingController();
  TextEditingController tc2=new TextEditingController();
  TextEditingController tc3=new TextEditingController();
  String ds="ds";
  String ex="ex";
  String tp="tp";
  String result="";
    void initState() {
    super.initState();
   
 
      tc1.addListener(calculateAverage);
    tc2.addListener(calculateAverage);
    tc3.addListener(calculateAverage);
  
  }
  void calculateAverage() {

    double tcd1 = double.tryParse(tc1.text) ?? 0;
    double tcd2 = double.tryParse(tc2.text) ?? 0;
    double tcd3 = double.tryParse(tc3.text) ?? 0;
    double average = (2 * tcd1 + 2 * tcd2 + 6 * tcd3) / 10;
    widget.onCalculate(average.toString());
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
          child: Form(
            key: keyX,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(padding:EdgeInsets.only(left: 20),
              child:   Text("${widget.matiere}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ,color: Colors.white
                )),
              ),
                Row(
            
                  children: [
                    Expanded(child: Xform(controllerX: tc1,hint:ds),),
                    Expanded(child: Xform(controllerX: tc3,hint:tp),),
                    Expanded(child: Xform(controllerX: tc2,hint:ex),),
                    
                    
        
                  ],
                ),
              ],
            ),
          ),
        );
  }
}