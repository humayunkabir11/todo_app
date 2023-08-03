 import 'package:counter_apps/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
   runApp(const MyApp());
 }

 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return const MaterialApp(
       debugShowCheckedModeBanner: false,
       home: HomeScreen(),
     );
   }
 }

