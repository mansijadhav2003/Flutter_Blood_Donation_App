//First Screen of App
/*Created Elevated button tapped on it go to login screen*/
import 'package:blooddonation/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login.dart';
class First extends StatefulWidget{
  const First({super.key});
  @override
  State<First> createState()=>_FirstState();
}
class _FirstState extends State<First>{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: Container(
             height: double.infinity,
             width: double.infinity,
              decoration: const BoxDecoration(
                 gradient: LinearGradient(
                        colors: [
                          Color(0xffB81736),
                          Color(0xff281537),
                        ]
                      ),
              ),
            child:Column(
              
              children: [
                 Padding(padding: const EdgeInsets.only(top: 200.0),
                
                child: SvgPicture.asset(
           'assets/rhesus-negative.svg',
           // ignore: deprecated_member_use
           color: Colors.white,
           height: 100,
           width: 70,

                 ),
                 ),
                   const Center(child: Text("BLOOD DONATION",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),),
                const SizedBox(
                  height: 100,
                ),

                GestureDetector(
                  onTap: () {
                     Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  const Login()),//Go to login screen
                              );
                      },
                      child: Container(
                        height: 53,
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white),
                        ),
                        child: const Center(child: Text("SIGN IN",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),),
                      ),
                  
                ),
                const SizedBox(
                  height: 30,
                ),
                  GestureDetector(
                  onTap: () {
                     Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SignUp()),//Go to login screen
                              );
                      },
                      child: Container(
                        height: 53,
                        width: 320,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white),
                        ),
                        child: const Center(child: Text("SIGN UP",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),),
                      ),
                  
                ),
                const Spacer(),
                  const Text("Login with Social Media",style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Image.asset("assets/social.png")
                

                     /* ElevatedButton(
                      onPressed: () {
                          Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Login()),//Go to login screen
                              );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.redAccent
                          ),
                          child: Image.asset("assets/first.jpg",
                          fit: BoxFit.fill,
                          //width: double.maxFinite,
                           ),
                          )*/
                        ],
                        ) ,
                      )
                  );
         }
}