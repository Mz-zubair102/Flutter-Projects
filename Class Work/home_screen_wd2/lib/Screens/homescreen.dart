import "package:flutter/material.dart";

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
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Count Value $count",style: TextStyle(fontSize: 18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 50,
                      onPressed:(){
                    increment();
                  },
                      icon: Icon(Icons.add_circle,color: Colors.green)),
                  IconButton(
                    iconSize: 50,
                      onPressed: decrement,
                      icon: Icon(Icons.remove_circle,color:Colors.red))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}