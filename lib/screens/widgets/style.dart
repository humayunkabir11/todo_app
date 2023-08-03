import 'package:flutter/material.dart';

InputDecoration AppInput(hintText,label){
   return InputDecoration(
     contentPadding: EdgeInsetsDirectional.all(20),
     border:  OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 3)),
     hintText: hintText,
     label: Text(label),

   );
}