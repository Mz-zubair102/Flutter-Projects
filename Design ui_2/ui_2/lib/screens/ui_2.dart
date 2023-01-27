import "package:flutter/material.dart";

import '../widgets/recent_tipsi_item_view.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("Assets/logo.jpeg"),height: 60,width: 60),
                    // Container(
                    //   child: Image.asset("Assets/logo.jpeg",height: 60,width: 60),),
                    Container(
                      height: 48,width: 48,
                      child: Icon(Icons.settings,color: Colors.black,size: 30,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        border: Border.all(width: 2.0,color: Colors.grey.withOpacity(0.4)),
                        // boxShadow: [BoxShadow(blurRadius:1.0,spreadRadius: 2.0,blurStyle: BlurStyle.outer,offset:Offset.zero)]
                      ),)],),
                Padding(
                  padding: const EdgeInsets.only(top:35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hello Andere,",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                           SizedBox(height: 5),
                          Text("Your available balnace",style: TextStyle(fontSize:16,color: Colors.grey.shade600
                          ),),
                      ],),
                      Text("\$15,200",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.compare_arrows,size:35,color: Colors.white,),
                              Text("Tip",style: TextStyle(fontSize:18,color: Colors.white),),
                            ],),
                          VerticalDivider(thickness:0.5,color:Colors.white,indent: 15,endIndent: 15,width: 1,),
                          Column(
                            children: [
                              Icon(Icons.add_card,size:35,color: Colors.white,),
                              Text("Top Up",style: TextStyle(fontSize:18,color: Colors.white),),
                            ],),
                          VerticalDivider(thickness:0.5,color:Colors.white,indent: 15,endIndent: 15,width: 1,),
                          Column(
                            children: [
                              Icon(Icons.history,size:35,color: Colors.white,),
                              Text("History",style: TextStyle(fontSize:18,color: Colors.white),),
                            ],),],),
                    ),
                    decoration: BoxDecoration(
                      color:Colors.blue.shade500,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text("Recent Tips",style:TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                ),

                // ListView Builder
                ListView.builder(
                  padding: EdgeInsets.all(10),
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext,int index){
                    // return Container(
                    //   margin: EdgeInsets.only(top: 14),
                    //   width: MediaQuery.of(context).size.width,
                    //   height: 60,
                    //   decoration: BoxDecoration(
                    //     // color: Colors.white,
                    //     // color:index.isEven?Colors.cyanAccent.shade100:Colors.cyan.shade100,
                    //     borderRadius:BorderRadius.only(topRight:Radius.circular(20) ),
                    //     // boxShadow: [BoxShadow(blurRadius:1,color: Colors.deepOrangeAccent)]
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(top: 5,left:5,right: 5,bottom: 5),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         // CircleAvatar(backgroundImage: AssetImage("${index.isEven?"Assets/girl.png":"Assets/Boy.png"}"),radius: 26,),
                    //          Image(image: AssetImage("${index.isEven?"Assets/girl.png":"Assets/Boy.png"}")),
                    //         Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Text("${index.isEven?"Starbucks Coffe":"Netflix Subcription"}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    //             SizedBox(height: 3),
                    //             Row(
                    //               mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //               children: [
                    //                 Text("${index.isEven?"Dec 2,2020":"Nov 23,2022"}",style: TextStyle(color: Colors.grey),),
                    //                 VerticalDivider(width: 20),
                    //                 Text("${index.isEven?"2:00AM":"3:45PM"}",style: TextStyle(color: Colors.grey),)],
                    //             ),
                    //           ],),
                    //         Text("${index.isEven?"\$180.00":"-\$230.00"}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    //       ],
                    //     ),
                    //   ),
                    // );
                    return Recenttipsitemview(
                      imagepath:index.isEven? "Assets/image2.png":"Assets/image1.jpg",
                      datetime: "Nov 24,2022 : 6:00PM",
                      name: "Starbucks Coffee ",
                      price: "150.00",
                    );
                  }),
              ],
            ),
          ),
        ),
      )
    ));
  }
}

