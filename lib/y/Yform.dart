import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Yform extends StatefulWidget {
  final TextEditingController?controllerY;
  final String?hint;
  const Yform({super.key, this.controllerY, this.hint,});

  @override
  State<Yform> createState() => _YformState();
}

class _YformState extends State<Yform> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        
                    controller: widget.controllerY,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                      filled: true,
                       fillColor: Colors.grey[400],
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                    
                  ),
                  hintText: "${widget.hint}"
                  
                 ),
                  validator: (val){
                  if(val!.isEmpty||val==null||(double.tryParse(val) ?? 0)>20||(double.tryParse(val) ?? 0)<0){
                    return"error";
                  }
                
                 },
                  ),

    );
  }
}