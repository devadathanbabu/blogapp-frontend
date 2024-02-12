import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("BLOGAPP"),
        // backgroundColor: Colors.indigoAccent.withOpacity(0.9),
      ),
      body:SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(

            children: [
              Text("BLOGIFY",style: TextStyle(fontSize: 20,),),
              SizedBox(height: 120,),
              Text("Welcome Back",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              Text("Enter your email and password to access your account",
              style: TextStyle(fontSize: 12),),
              SizedBox(height: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                  textAlign: TextAlign.left,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your eMail",
                        filled: true,
                        fillColor: Colors.grey[100],
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Password",
                    textAlign: TextAlign.left,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                      suffixIcon: Icon(CupertinoIcons.eye_fill),
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none
                    ),
                  ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(CupertinoIcons.square),
                  SizedBox(width: 10,),
                  Text("Remember me"),
                  SizedBox(width: 93,),
                  Text("Forgot Password")
                ],
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 600,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                      onPressed: (){},
                      child: Text("Sign In"))),
              SizedBox(height: 5,),
              SizedBox(
                  width: 600,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage("https://1000logos.net/wp-content/uploads/2016/11/New-Google-Logo.jpg"),
                          ),
                          SizedBox(width: 20,),
                          Text("Sign In with Google"),
                        ],
                      ))
              ),
              SizedBox(height: 80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(onPressed: (){}, child: Text("Sign Up",
                    style: TextStyle(color: Colors.black),))
                ],
              )

            ],
          ),
        ),
      )

    );
  }
}
