import 'package:blooddonation/homescreen.dart';
import 'package:flutter/material.dart';

import 'signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  ///CONTROLLERS
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffB81736),
                      Color(0xff281537),
                    ],
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 60, left: 22),
                  child: Text(
                    "Hello\nSign in!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
/*borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),*/
                    /* border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),*/
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: userNameTextEditingController,
                                autofocus: true,
                                decoration: InputDecoration(
                                  label: const Text(
                                    "Username",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffB81736),
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  suffixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.grey,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter username";
                                  } else {
                                    return null;
                                  }
                                },
                                keyboardType: TextInputType.emailAddress,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                controller: passwordTextEditingController,
                                obscureText: true,
                                obscuringCharacter: "*",
                                decoration: InputDecoration(
                                  label: const Text(
                                    "Enter password",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffB81736),
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  suffixIcon: const Icon(
                                    Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter password";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Forget Password",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Color(0xff281537),
                                ),
                              ),
                              const SizedBox(
                                height: 100,
                              ),
                              GestureDetector(
                                onTap: () {
                                  bool loginValidated =
                                      _formKey.currentState!.validate();
                                  if (loginValidated) {
                                    // Check username and password
                                    String enteredUsername =
                                        userNameTextEditingController.text;
                                    String enteredPassword =
                                        passwordTextEditingController.text;

                                    if (enteredUsername == "Mansi" &&
                                        enteredPassword == "Mansi@123") {
                                      // Navigate to another screen if login is successful
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeScreen()),
                                      );
                                    } else {
                                      // Show error message if username or password is incorrect
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              "Invalid username or password"),
                                        ),
                                      );
                                    }
                                  }
                                },
                                child: Container(
                                  height: 55,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color(0xffB81736),
                                        Color(0xff281537),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "SIGN IN",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  const Text(
                                    "Don't have account?",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUp()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    child: const Text(
                                      "Sign up",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


              

  
                  
                
                      
                   /* Container(
                      height:61,
                      width:309,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                       gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          
                          Color(0xffB81736), // First color (0xFF for opacity)
                      Color(0xff281537)
                        ]
                       )
                    
                      
                    ),
                 /* child: SingleChildScrollView(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    
                  children: [
                       Text("Sign in",
                       style: GoogleFonts.quicksand(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 24,)
                      ),
                        
                      Image.asset("assets/medical.jpg",
                        width: 400,
                        height: 250,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Blood Donation",
                          style: GoogleFonts.quicksand(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 24
                         ),
                      ),
                      
                      TextFormField(
                        controller: userNameTextEditingController,
                        autofocus: true,
                        // key: userNameKey,
                        decoration: InputDecoration(
                        hintText: "Enter username",
                        label: const Text("Enter username"),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        ),
                        prefixIcon: const Icon(
                        Icons.person,
                        ),
                      ),
                      validator: (value) {
                        //print("In USERNAME VALIDATOR");
                        if (value == null || value.isEmpty) {
                               return "Please enter username";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordTextEditingController,
                      // key: passwordKey,
                      autofocus: true,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                      hintText: "Enter password",
                      label: const Text("Enter password"),
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      ),
                      prefixIcon: const Icon(
                      Icons.lock,
                      ),
                      suffixIcon: const Icon(
                      Icons.remove_red_eye_outlined,
                      ),
                      ),
                      validator: (value) {
                      //print("In PASSWORD VALIDATOR");
                      if (value == null || value.isEmpty) {
                      return "Please enter password";
                      } else {
                      return null;
                      }
                      },
                      ),
                      const SizedBox(
                      height: 20,
                      ),
                      
                   /* Container(
                      height:61,
                      width:309,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                       gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          
                          Color(0xffB81736), // First color (0xFF for opacity)
                      Color(0xff281537)
                        ]
                       )
                    
                      
                    ),
                      child:ElevatedButton(
                      onPressed: () {
                        bool loginValidated = _formKey.currentState!.validate();
                         if (loginValidated) {
                            // Check username and password
                            String enteredUsername = userNameTextEditingController.text;
                            String enteredPassword = passwordTextEditingController.text;

                            if (enteredUsername == "Mansi" && enteredPassword == "Mansi@123") {
                              // Navigate to another screen if login is successful
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HomeScreen()),
                              );
                            } else {
                              // Show error message if username or password is incorrect
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Invalid username or password"),
                                ),
                              );
                            }
                            }
                          },
                          
                          
                          child: const Text("Sign in",
                           style: TextStyle(
                            fontSize: 18,
                            fontWeight:FontWeight.w800,),
                          )
                      )
                    ),*/
                     GestureDetector(
             onTap: (){
               //Navigator.push(context,
                 //  MaterialPageRoute(builder: (context) => const HomeScreen()));
                   bool loginValidated = _formKey.currentState!.validate();
                         if (loginValidated) {
                            // Check username and password
                            String enteredUsername = userNameTextEditingController.text;
                            String enteredPassword = passwordTextEditingController.text;

                            if (enteredUsername == "Mansi" && enteredPassword == "Mansi@123") {
                              // Navigate to another screen if login is successful
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HomeScreen()),
                              );
                            } else {
                              // Show error message if username or password is incorrect
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Invalid username or password"),
                                ),
                              );
                            }
                         }                          
             },
             child: Container(
               height: 53,
               width: 320,
               decoration: BoxDecoration(
                 gradient: const LinearGradient(
                        colors: [
                          Color(0xffB81736),
                          Color(0xff281537),
                        ]
                      ),
                 borderRadius: BorderRadius.circular(30),
                 
               ),
               child: const Center(child: Text('SIGN IN',style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color: Colors.white
               ),),),
             ),
           ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("If you are new user,Please create new account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),),
                    const SizedBox(
                      height: 20,
                    ),
                     /*Container(
  height: 61,
  width: 309,
  decoration: BoxDecoration(
    //color: Colors.pink,
    borderRadius: BorderRadius.circular(30),
   // color: const Color.fromARGB(255, 201, 19, 19)
  ),
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignUp()),
      );
    },
   
style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent,
        
          
       ),
    child: const Text(
      "Create New Account",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w800,
      ),
    ),
  ),
),*/
GestureDetector(
             onTap: (){
               //Navigator.push(context,
                 //  MaterialPageRoute(builder: (context) => const HomeScreen()));
                   bool loginValidated = _formKey.currentState!.validate();
                         if (loginValidated) {
                            // Check username and password
                            String enteredUsername = userNameTextEditingController.text;
                            String enteredPassword = passwordTextEditingController.text;

                            if (enteredUsername == "Mansi" && enteredPassword == "Mansi@123") {
                              // Navigate to another screen if login is successful
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HomeScreen()),
                              );
                            } else {
                              // Show error message if username or password is incorrect
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Invalid username or password"),
                                ),
                              );
                            }
                         }                          
             },
             child: Container(
               height: 53,
               width: 320,
               decoration: BoxDecoration(
                 gradient: const LinearGradient(
                        colors: [
                          Color(0xffB81736),
                          Color(0xff281537),
                        ]
                      ),
                 borderRadius: BorderRadius.circular(30),
                 
               ),
               child: const Center(child: Text('SIGN UP',style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color: Colors.white
               ),),),
             ),
           ),
                      
                  ],
                  )
                )
          )*/
          )
      );
      
  }
}*/