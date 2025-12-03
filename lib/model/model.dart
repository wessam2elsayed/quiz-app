class Model {
  final String question;
  final Map<String,bool>answer;

  Model({required this.question, required this.answer});

 final List<Model> questions=[
  Model(question: "Who is the owner of Flutter?",
   answer: {
    "Google":true,
    "Nokia":false,
    "Apple":false,
    "Samsung":false,
   }),
   Model(question: "Who is the owner of Iphone?", 
   answer: {
    "Microsoft":false,
    "Oppo":false,
    "Google":false,
    "Apple":true,
   }),
   Model(question: "Youtube is ...... platform?", 
   answer: {
    "Music sharing":false,
    "Video Sharing":false,
    "Live Streaming":false,
    "All of the above":true
   }),
   Model(question: "Which programming language is Flutter primarily based on?",
    answer: {
      "Java":false,
      "Dart":true,
      "python":false,
      "Swift":false,
    }
    )

 ];
  
}