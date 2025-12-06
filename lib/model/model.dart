class Model {
  final String question;
  final Map<String,bool>answers;

  Model({required this.question, required this.answers});
  
}

 final List<Model> questions=[
  Model(question: "Who is the owner of Flutter?",
   answers: {
    "Google":true,
    "Nokia":false,
    "Apple":false,
    "Samsung":false,
   }),
   Model(question: "Who is the owner of Iphone?", 
   answers: {
    "Microsoft":false,
    "Oppo":false,
    "Google":false,
    "Apple":true,
   }),
   Model(question: "Youtube is ...... platform?", 
   answers: {
    "Music sharing":false,
    "Video Sharing":false,
    "Live Streaming":false,
    "All of the above":true
   }),
   Model(question: "Which programming language is Flutter primarily based on?",
    answers: {
      "Java":false,
      "Dart":true,
      "python":false,
      "Swift":false,
    }
    )

 ];