import 'package:flutter/material.dart';
import 'package:quiz_app/home/page_view_screen.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key, required this.index,});
    int index;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  int score=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          
          children: [
            
            Center(
              child: Text("Flutter Quiz App",
              style: TextStyle(color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20,),
            Text("Question ${widget.index+1} / ${questions.lenght}",
            style: TextStyle(color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),

            Stack(
              clipBehavior: Clip.none,
              children: [
              Container(alignment: Alignment.center,
              height: 100,
              width: double.infinity, 
              padding: EdgeInsets.symmetric(horizontal: 20),             
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  questions[widget.index].question,
                            style: TextStyle(color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),),
              ),),
          
            Positioned(
              top: 25,
              left: -25,
              child: CircleAvatar(radius: 25,
                backgroundColor: Colors.black,),
            ),
               Positioned(
                top: 25,
                right: -25,
                 child: CircleAvatar(radius: 25,
                               backgroundColor: Colors.black,),
               ),
               Positioned(
                left: MediaQuery.of(context).size.width/2-40,
                top: -25,
                 child: CircleAvatar(radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.check,
                  size: 30,
                  color: Colors.green,),),
               ),             
            ],),
             const SizedBox(height: 20,),
             Flexible(
               child: ListView.separated(
                
                itemBuilder: (context,index){
                return InkWell(onTap: (){
                  setState(() {
                    selectedIndex=index;
                  });

                },
                  child: Container(width: 200,height: 60,
                   decoration: BoxDecoration(color: 
                   selectedIndex == index?
                    Colors.green:Colors.white,
                   borderRadius: BorderRadius.circular(15)),
                   child: Center(
                     child: Text(
                      "${questions[widget.index].answer.keys.toList()[index]}",
                      textAlign: TextAlign.center,
                     style: TextStyle(color: selectedIndex==index?
                      Colors.white:Colors.black,
                     fontSize: 14,
                     fontWeight: FontWeight.bold),),
                   ),
                   ),
                );
               },
                separatorBuilder: (context,index){
               
                  return const SizedBox(height: 20,);
                },
                itemCount: questions[widget.index].answer.lenght),
             ),
               const SizedBox(height: 20,),
               ElevatedButton(
                style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
                fixedSize: Size(MediaQuery.of(context).size.width, 50)),
                onPressed: (){
                  
                    setState(() {
                      questions[widget.index].answer.values.toList()[selectedIndex!]==true?
                      score++:score;
                      if(widget.index< questions.length-1){
                    widget.index+1;
                      }else{
                        showDialog(context: context,
                         builder: (context){
                          return AlertDialog(
                            title: Text("Quiz Completed"),
                            content: Text("Your score is $score"),
                            actions: [
                              TextButton(onPressed: (){
                                Navigator.pop(context);
                              }, child: Text("Ok"))
                            ],
                          );
                         },);

                      }
                      selectedIndex= null;
                      
                  });
                }, 
                child: Text(selectedIndex<questions.lenght-1 ?"N e x t":"S u b m i t",
               style: TextStyle(color: Colors.black,fontSize: 20,
               fontWeight: FontWeight.bold),))
               
            ],)
          ),
      
    );
  }
}