import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'homescreen.dart';
class Profile extends StatefulWidget{
  const Profile({super.key});
  @override
  State<Profile> createState()=>_ProfileState();
}
class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
      title: const Text("My Profile"),
          gradient:const LinearGradient(
            colors: [
              Color(0xffB81736),
               Color(0xff281537),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        
      
    
        leading: BackButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Center(
                child: Image.asset(
                  "assets/profile.jpg",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              const ListTile(
                title: Text("Name"),
                subtitle: Text("UserName"),
              ),
              const ListTile(
                title: Text("E-mail"),
                subtitle: Text("example@gmail.com"),
              ),
              const ListTile(
                title: Text("Mobile Number"),
                subtitle: Text("9654779890"),
              ),
              const ListTile(
                title: Text("Gender"),
                subtitle: Text("Male"),
              ),
              const ListTile(
                title: Text("Age"),
                subtitle: Text("21"),
              ),
              const ListTile(
                title: Text("City"),
                subtitle: Text("Satara"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
