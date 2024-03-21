import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Xform extends StatefulWidget {
  final TextEditingController?controllerX;
  final String?hint;
  const Xform({super.key, this.controllerX, this.hint,});

  @override
  State<Xform> createState() => _XformState();
}

class _XformState extends State<Xform> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
                    
                    controller: widget.controllerX,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                      
                          filled: true,
                          fillColor: Colors.grey[400],

                      
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                    
                  ),
                  hintText: "${widget.hint}",
                  
                  
                  
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