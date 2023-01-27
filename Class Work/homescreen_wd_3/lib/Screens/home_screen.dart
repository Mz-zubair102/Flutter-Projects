import "package:flutter/material.dart";
import 'package:homescreen_wd_3/Screens/valuescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count=0;
  void increment(){
    count=count+1;
    setState(() {
    });
    //  count+=count
  }
  void decrement(){
    // count-=count;
    --count;
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          elevation: 10,
          backgroundColor: Colors.cyan,
          title:Text("Homescreen",style: TextStyle(
            decoration:TextDecoration.lineThrough,
            fontStyle: FontStyle.italic,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),)
      ),
      //Button-Images
      //Buttons
      //Buttons,Images
      // body: Center(
      //   child: Column(
      //     children: [
      //       Image.asset("Assets/Image1.jpg",width: 200,height: 100,fit:BoxFit.cover),
      //       //Inkwell
      //       // InkWell(
      //       //   onTap: (){},
      //       //     child: Image.network("https://images.pexels.com/photos/1744663/pexels-photo-1744663.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"))
      //       // GestureDetector(
      //       //   onTap: (){},
      //       //     child: Image.network("https://images.pexels.com/photos/1744663/pexels-photo-1744663.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")),
      //       TextButton(onPressed: (){}, child:Image.asset("Assets/Image1.jpg",width: 200,height: 50,fit:BoxFit.cover)),
      //       IconButton(onPressed: (){}, icon: Icon(Icons.add_circle,color:Colors.red)),
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Count Value $count",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      iconSize: 40,
                      onPressed:(){
                        increment();
                      },
                      icon: Icon(Icons.add_circle,color: Colors.green)),
                  IconButton(
                      iconSize: 40,
                      onPressed: decrement,
                      icon: Icon(Icons.remove_circle,color:Colors.red))
                ],
              ),
              TextButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ValueScreen(countervalue: count)));
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context){return ValueScreen(countervalue: count);}));
              },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    elevation: 10,
                    backgroundColor: Colors.lightBlue,
                    shadowColor: Colors.red,
                    shape:BeveledRectangleBorder(
                      borderRadius: BorderRadius.only(topRight:Radius.circular(10),bottomLeft: Radius.circular(10)),
                    )
                  ),
                  child:Text("Navigate",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    fontStyle: FontStyle.italic,
                  ),))
            ],
          ),
        ),
    );
  }
}