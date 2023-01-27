import 'package:flutter/material.dart';
class Recenttipsitemview extends StatelessWidget {
  final String imagepath;
  final String name;
  final String datetime;
  final String price;

  const Recenttipsitemview({
    Key? key,
    required this.imagepath,
    required this.name,
    required this.datetime,
    required this.price
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
            child: Image.asset(imagepath,fit: BoxFit.cover),
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
                Text(name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  maxLines:2,
                  overflow: TextOverflow.ellipsis,),
                const SizedBox(height: 10),
                Text(datetime)
              ],),
          ),
          const SizedBox(width: 8),
          Text("-\$$price",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
