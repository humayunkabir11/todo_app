import 'package:flutter/material.dart';

InputDecoration appInput(hintText,label){
   return InputDecoration(
     contentPadding: EdgeInsetsDirectional.all(20),
     border:  const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 3)),
     hintText: hintText,
     label: Text(label),


   );
}