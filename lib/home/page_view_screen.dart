
import 'package:flutter/material.dart';
import 'package:quiz_app/home/home_screen.dart';
import 'package:quiz_app/model/model.dart';



class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      body: PageView.builder(
        itemCount: questions.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context,int index){
          return HomeScreen(index: index);
        
      }),
    );
  }
}