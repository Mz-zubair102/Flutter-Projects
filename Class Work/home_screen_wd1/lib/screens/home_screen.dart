import 'package:flutter/material.dart';
class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        title: const Text("Home Screen",style: TextStyle(fontSize: 26),),
        centerTitle: true,
        elevation: 12,
        backgroundColor: Colors.blueGrey,
      ),
      bottomNavigationBar: Container(height: 50,color:Colors.blueGrey,
          child: Center(
              child: Text("Navigation Bar",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,color: Colors.red),)),
          ),
      //ListView
      // body: Container(color:Colors.grey),
      // body: ListView(
      //   children: [
      //     // Text("Child-1"),
      //     // Text("Child-2"),
      //     // Text("Child-3"),
      //     Container(
      //       height:150,
      //       width: MediaQuery.of(context).size.width,
      //       color: Colors.teal,
      //     ),
      //     Container(
      //       height:150,
      //       width: MediaQuery.of(context).size.width,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       height:150,
      //       width: MediaQuery.of(context).size.width,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       height:150,
      //       width: MediaQuery.of(context).size.width,
      //       color: Colors.cyan,
      //     ),
      //     Container(
      //       height:150,
      //       width: MediaQuery.of(context).size.width,
      //       color: Colors.deepOrangeAccent,
      //     ),
      //
      //   ],
      // ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: 10,
          itemBuilder: (BuildContext Context,int index){
          //container
        // return Container(width: MediaQuery.of(context).size.width,
        //   height: 100,color:index.isEven?Colors.pinkAccent:Colors.teal);
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              margin: const EdgeInsets.only(top: 3),
              decoration: BoxDecoration(
                color:index.isEven?Colors.lightBlueAccent:Colors.teal,
                borderRadius:BorderRadius.only(topRight:Radius.circular(15)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    // child:Image.asset("Assets/logo.jpg",fit:BoxFit.fill),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://images.ctfassets.net/23aumh6u8s0i/2RrLE9Sz4VcKrh4pa3I0kn/8e1bbadef51dd4e26aa8174c2afbfd3a/flutter.png"),
                        fit: BoxFit.fill,),
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.all(Radius.circular(60)),
                        boxShadow:[BoxShadow(color: Colors.lightBlue,spreadRadius: 2.0,blurRadius: 3.0)],
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                      Text("Name Contact",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text("List Message",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
                    ],
                  ),
                  const Expanded(child: Center()),
                  const Text("8:00 AM",style: TextStyle(fontSize: 16))
                ],
              ),
            );
      }),
    );
  }
}

