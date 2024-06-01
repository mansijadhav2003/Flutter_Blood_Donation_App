import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController mobileTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController rePasswordTextEditingController =
      TextEditingController();
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
                height: 150,
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
                    "Create Your\nAccount",
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
                          height: 10,
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
                              controller: mobileTextEditingController,
                      autofocus: true,
                      // key: passwordKey,
                      obscureText: true,
                      
                      decoration: InputDecoration(
                        label: const Text("Mobile No", style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffB81736),
                                    ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        suffixIcon: const Icon(
                          Icons.mobile_friendly,
                        ),
                      ),
                      validator: (value) {
                        //print("In PASSWORD VALIDATOR");
                        if (value == null || value.isEmpty) {
                          return "Please enter mobile number";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: emailTextEditingController,
                      autofocus: true,
                      
                      decoration: InputDecoration(
                         label: const Text("E-mail", style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffB81736),
                                    ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        suffixIcon: const Icon(
                          Icons.email,
                        ),
                      ),
                      validator: (value) {
                        //print("In PASSWORD VALIDATOR");
                        if (value == null || value.isEmpty) {
                          return "Please enter email";
                        } else {
                          return null;
                        }
                      },
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
                              TextFormField(
                                controller: passwordTextEditingController,
                                obscureText: true,
                                obscuringCharacter: "*",
                                decoration: InputDecoration(
                                  label: const Text(
                                    "Re-type password",
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
                                    return "Please Re-enter password";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                             const  SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Forget Password",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color:  Color(0xff281537),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap:(){
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Sign up successfully"),
                                ),
                              );
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
                                      "SIGN UP",
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
                                    "If you have already Account,Please sign in",
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
                                        MaterialPageRoute(builder: (context) => const Login()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    child: const Text(
                                      "Sign in",
                                      textAlign: TextAlign.center,
                                      style:  TextStyle(
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
       )
    );
  }
}
       /* body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  child: Column(children: [
                    /*Text("Sign Up",
                       style: GoogleFonts.quicksand(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 24,)
                      ),*/
                    Image.asset(
                      "assets/blood.jpg",
                      height: 200,
                      width: 400,
                    ),
                    const SizedBox(
                      height: 20,
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
                        suffixIcon: const Icon(
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
                      height: 15,
                    ),
                    TextFormField(
                      controller: mobileTextEditingController,
                      autofocus: true,
                      // key: passwordKey,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: "Mobile",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        suffixIcon: const Icon(
                          Icons.mobile_friendly,
                        ),
                      ),
                      validator: (value) {
                        //print("In PASSWORD VALIDATOR");
                        if (value == null || value.isEmpty) {
                          return "Please enter mobile number";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: emailTextEditingController,
                      autofocus: true,
                      // key: passwordKey,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        suffixIcon: const Icon(
                          Icons.email,
                        ),
                      ),
                      validator: (value) {
                        //print("In PASSWORD VALIDATOR");
                        if (value == null || value.isEmpty) {
                          return "Please enter email";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: passwordTextEditingController,
                      autofocus: true,
                      // key: passwordKey,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
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
                      height: 15,
                    ),
                    TextFormField(
                      controller: passwordTextEditingController,
                      autofocus: true,
                      // key: passwordKey,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: "Re-type Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        suffixIcon: const Icon(
                          Icons.remove_red_eye_outlined,
                        ),
                      ),
                      validator: (value) {
                        //print("In PASSWORD VALIDATOR");
                        if (value == null || value.isEmpty) {
                          return "Please Re-type password";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 61,
                      width: 309,
                      child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Sign up successfully"),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.redAccent,
                          ),
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "If you have already account,Please Sign in",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 61,
                      width: 309,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Login()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.redAccent,
                          ),
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          )),
                    ),
                  ]),
                )
          )
        )
    );
  }
}*/
