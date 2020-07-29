import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

myapp1() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.grey);
myPrint(){
  print("Khushbu Sinha");
  Fluttertoast.showToast(
        msg: "This is Khushbu",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
}
myt(){
  print("Button Pressed");
  }

 var myBody=Container(
   color: Colors.grey.shade100,
    
   width: double.infinity,
   height: double.infinity,
   alignment: Alignment.center,

   child: Stack(
    alignment: Alignment.topCenter,
     children: <Widget>[
       Container(
         decoration: BoxDecoration(
           color: Colors.teal.shade200,
           borderRadius: BorderRadius.circular(10),
           border: Border.all(
             color:Colors.deepPurple,
             width:3
           )

         ),
         alignment: Alignment.topCenter,
         //color: Colors.amber,
         width: 280,
         height: 200,
         margin: EdgeInsets.all(50),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
           Text("Khushbu Sinha",
           style: TextStyle(color: Colors.blue.shade800,
           fontWeight: FontWeight.bold,
           fontSize:25.5),),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Icon(Icons.email),
               Text("04khushbu@gmail.com",
               style: TextStyle(fontSize: 20
               ),)
             ],),
         ],),
       ),
       
       
       GestureDetector(
       //onTap: myPrint,
       onDoubleTap: myPrint,
       
          child: Container(
           decoration: BoxDecoration(
             image: DecorationImage(
               image: NetworkImage("https://raw.githubusercontent.com/khushbuSinha29/Myfirstupload/master/pic1.png"),
               fit: BoxFit.cover,
               ),
               borderRadius: BorderRadius.circular(50),
               border: Border.all(
                 color: Colors.black,
                 width:4,
                )
           ),
           width:100 ,
           height: 100,
           alignment: Alignment.topCenter,
           //color: Colors.black,
         ),
       ),
     ],
     )
   );
     
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        title: Text("My Profile",
        style: TextStyle(
          fontWeight:FontWeight.bold
         ),
        ),
        backgroundColor: Colors.purple,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_a_photo),onPressed:myt),
          IconButton(icon: Icon(Icons.account_circle),onPressed:null),
        ],
      ),
      body: myBody,
    ) 
    ,);
}