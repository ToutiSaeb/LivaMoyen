import 'package:flutter/material.dart';
import 'package:livamoyen/y/Yform.dart';

class Ycustom extends StatefulWidget {
   final Function(String) onCalculate;
    final String matiere;
  const Ycustom({super.key, required this.onCalculate,required this.matiere,});

  @override
  State<Ycustom> createState() => _YcustomState();
}

class _YcustomState extends State<Ycustom> {
   GlobalKey<FormState> keyY=new GlobalKey();
  TextEditingController tc1=new TextEditingController();
  TextEditingController tc2=new TextEditingController();
  String ds="ds";
  String ex="ex";
  String tp="tp";
   void initState() {
    super.initState();
    tc1.addListener(calculateAverage);
    tc2.addListener(calculateAverage);
  }
  void calculateAverage() {
    double tcd1 = double.tryParse(tc1.text) ?? 0;
    double tcd2 = double.tryParse(tc2.text) ?? 0;
    
    double average = (tcd1 + 2 * tcd2 ) / 3;
    widget.onCalculate(average.toString());
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
          child: Form(
            key: keyY,
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
                    Expanded(child: Yform(controllerY: tc1,hint:ds),),
                    Expanded(child: Yform(controllerY: tc2,hint:ex),),
                  ],
                ),
              ],
            ),
          ),
        );
  }
}