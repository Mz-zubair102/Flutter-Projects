import 'package:flutter/material.dart';
import 'package:ui_2/Models/trips_model.dart';
class Recenttipsitemviewmodel extends StatelessWidget {
  final TripsModel detail;


  const Recenttipsitemviewmodel({
    Key? key,required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      margin: EdgeInsets.only(bottom: 7),
      child: Row(
        children: [
          // Image(image: AssetImage("Assets/image2.png"),height: 70,width: 70),
          Container(
            width: 60,
            height: 60,
            color: Colors.yellow,
            child: Image.asset(detail.image,fit: BoxFit.cover),
            // decoration: BoxDecoration(
            //   image: DecorationImage(image: AssetImage("Assets/image2.png"),fit: BoxFit.cover),
            //     color: Colors.yellow, shape: BoxShape.circle,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(detail.name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  maxLines:2,
                  overflow: TextOverflow.ellipsis,),
                const SizedBox(height: 10),
                Text(detail.datetime)
              ],),
          ),
          const SizedBox(width: 8),
          Text("-\$${detail.price}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
