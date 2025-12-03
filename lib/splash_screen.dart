import 'package:flutter/material.dart';
import 'package:quiz_app/home/page_view_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), (){
      Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (context)=> PageViewScreen()
          
          ),
          );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
          Image.asset("assets/quiz.png"),
          ShaderMask(
           shaderCallback: (bounds) => const LinearGradient(
             begin: Alignment.topCenter,
             end: Alignment.bottomCenter,
             colors: [Colors.purple,Colors.blue],
             ).createShader(bounds),
           child: const Text("Quiz App",
             style: TextStyle(
             fontSize: 30,
             fontWeight: FontWeight.bold,
             color: Colors.white,
             ),
           ),
          ),
          CircularProgressIndicator(
            color: Colors.purple,)
        ],),
      ),
    );
  }
}