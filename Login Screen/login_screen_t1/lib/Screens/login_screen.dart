import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
        body:Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Image.asset("Assets/images/logo.jpeg",height: 100,width: 100,),),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: "Your Email",
                  labelText:'Your Email',
                  labelStyle:TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password_outlined),
                  suffix: Text("Forgot Password"),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: "Password",
                  labelText:'Password',
                  labelStyle:TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 350,
                alignment: Alignment.center,
                child:InkWell(onTap: (){},
                  child: Text("Login",
                      style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400,)),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.blue.shade400,),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New to Wpay?",style: TextStyle(fontSize:14,color: Colors.grey),),
                  TextButton(onPressed: (){},child:Text("Sign Up",
                    style: TextStyle(fontSize:16,color:Colors.blue.shade700,decoration: TextDecoration.underline),
                  )),
                ],),
              SizedBox(height: 10),
              Center(child: Text("or continue with",style: TextStyle(fontSize:14,color:Colors.grey),),),
              Container(
                padding: EdgeInsets.only(left: 10),
                height: 50, width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    border: Border.all(width: 2,color: Colors.grey.withOpacity(0.2)),
                    // boxShadow: [BoxShadow(blurStyle: BlurStyle.inner,blurRadius: 2)]
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:30, width: 30,
                      child: Image.asset("Assets/images/fblogo.png"),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                      ),),
                    Expanded(child: Center()),
                    Text("Login with Facebook",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500)),
                    Expanded(child: Center()),
                  ],),),
              Container(
                padding: EdgeInsets.only(left: 10),
                height: 50, width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    border: Border.all(width: 2,color: Colors.grey.withOpacity(0.2)),
                    // boxShadow: [BoxShadow(blurStyle: BlurStyle.inner,blurRadius: 2)]
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:30, width: 30,
                      child: Image.asset("Assets/images/Googlelogo.png"),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                      ),),
                     Expanded(child: Center()),
                    Text("Login with Google",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500)),
                     Expanded(child: Center()),
                  ],),),
            ],
          ),
        )
      ),
    );
  }
}
/*
* Container(height: 120, width: 120,
                child: Image.asset("Assets/images/logo.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                hintText: "Your Email",
                labelText:'Your Email',
                labelStyle:TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password_outlined),
                  suffix: Text("Forgot Password"),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: "Password",
                  labelText:'Password',
                  labelStyle:TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 350,
                alignment: Alignment.center,
                child:TextButton(onPressed: (){},child: Text("Login",
                  style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400,))),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.blue.shade400,),),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("New to Wpay?",style: TextStyle(fontSize:14,color: Colors.grey),),
                TextButton(onPressed: (){},child:Text("Sign Up",
                  style: TextStyle(fontSize:16,color:Colors.blue.shade700,decoration: TextDecoration.underline),
                )),
              ],),
              SizedBox(height: 100),
              Center(child: Text("or continue with",style: TextStyle(fontSize:14,color:Colors.grey),),),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(6),
                height: 50, width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  border: Border.all(width: 2,color: Colors.grey.withOpacity(0.2)),
                  boxShadow: [BoxShadow(blurStyle: BlurStyle.inner,blurRadius: 2)]
                ),
                child: Row(
                  children: [
                    Container(
                      height:35, width: 35,
                      child: Image.asset("Assets/images/fblogo.png"),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                      ),),
                    SizedBox(width: 40),
                    Text("Login with Facebook",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500)),
                  ],),),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(6),
                height: 50, width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                    border: Border.all(width: 2,color: Colors.grey.withOpacity(0.2)),
                  boxShadow: [BoxShadow(blurStyle: BlurStyle.inner, blurRadius: 10)]
                ),
                child: Row(
                  children: [
                    Container(
                      height:35, width: 35,
                      child: Image.asset("Assets/images/Googlelogo.png"),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                      ),),
                    SizedBox(width: 40),
                    Text("Login with Google",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500)),
                  ],),),
* */
