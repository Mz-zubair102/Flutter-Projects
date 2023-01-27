import 'package:flutter/material.dart';

class ValueScreen extends StatefulWidget {
  final int countervalue;
  const ValueScreen({Key? key,required this.countervalue}) : super(key: key);

  @override
  State<ValueScreen> createState() => _ValueScreenState();
}

class _ValueScreenState extends State<ValueScreen> {
  String myvalue="";
  void multiplyFun({required int value}){
     myvalue="${value+2}";
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    multiplyFun(value: widget.countervalue);
    // myvalue="${widget.countervalue*2}";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 20,
        title: Text("Value Screen"),
        backgroundColor: Colors.cyan,
        leading: TextButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: Text("Back",style: TextStyle(fontSize: 16,color: Colors.white),),
        ),
      ),
      // body: Center(child: Text("${widget.countervalue}",
      //   style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red,// backgroundColor: Colors.blue,),),),
      body: Center(child: Text("$myvalue",
        style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold,
          color: Colors.black, /* backgroundColor: Colors.blue,*/
     ),),),
    );
  }
}
