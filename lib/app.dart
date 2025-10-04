import 'package:flutter/material.dart';
import 'package:frontend/Event/event_details.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      debugShowCheckedModeBanner:false,

    // uncomment the code line bellow to add the route to your screen   

      home:  EventDetails(),
     
    );
  }
}