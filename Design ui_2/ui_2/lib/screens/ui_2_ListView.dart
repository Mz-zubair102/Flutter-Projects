import 'package:flutter/material.dart';
import 'package:ui_2/widgets/recent_tipsi_item_view.dart';

class Homescreen2_2 extends StatelessWidget {
  const Homescreen2_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
          itemBuilder:(BuildContext, int index){
          return Recenttipsitemview(
            imagepath:index.isEven? "Assets/image2.png":"Assets/image1.jpg",
            datetime: "Nov 24,2022 : 6:00PM",
            name: "Starbucks Coffee ",
            price: "150.00",
          );
            // return Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 100,
            //   margin: EdgeInsets.only(bottom: 10),
            //   child: Row(
            //     children: [
            //        Image(image: AssetImage("Assets/image2.png"),height: 70,width: 70),
            //       // Container(
            //       //   width: 70,
            //       //   height: 70,
            //       //   color: Colors.yellow,
            //       //   child: Image.asset("Assets/image2.png"),
            //       // ),
            //       const SizedBox(width: 12),
            //       Expanded(
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //          Text("Starbuck Cofee",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
            //            maxLines:2,
            //            overflow: TextOverflow.ellipsis,),
            //             const SizedBox(height: 10),
            //           Text("Nov 24. 2022 : 5:00PM")
            //         ],),
            //       ),
            //       const SizedBox(width: 8),
            //       Text("-\$180.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
            //     ],
            //   ),
            // );
          }),
    );
  }
}
