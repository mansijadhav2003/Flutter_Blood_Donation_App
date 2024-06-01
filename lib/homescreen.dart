import 'package:blooddonation/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'donorform.dart';
import 'bloodfacts.dart';
import 'need.dart';
import 'login.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState()=>_HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  

  final List<List<String>> bloodCompatibilityData = [
    ['A+', 'A+, AB+', 'A+, A-, O+, O-'],
    ['O+', 'A+, B+, AB+, O+', 'O+, O-'],
    ['B+', 'B+, AB+', 'B+, B-, O+, O-'],
    ['AB+', 'AB+', 'Everyone'],
    ['A-', 'A-, AB-, A+, AB+', 'A-, O-'],
    ['O-', 'Everyone', 'O-'],
    ['B-', 'B-, AB-, B+, AB+', 'B-, O-'],
    ['AB-', 'AB-, AB+', 'AB-, A-, B-, O-'],
  ];

  @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: GradientAppBar(
      title: const Text("Blood Donation"),
     
          gradient: const LinearGradient(
            colors: [
              Color(0xffB81736),
              Color(0xff281537),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      
    drawer: Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/profile.jpg"),
            ),
            accountEmail: Text('example@gmail.com'),
            accountName: Text(
              'username',
              style: TextStyle(fontSize: 24.0),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xffB81736), // First color (0xFF for opacity)
                  Color(0xff281537),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('Supporters'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.support,
            ),
            title: const Text('Team Members'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.card_membership,
            ),
            title: const Text('Team Members'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.privacy_tip,
            ),
            title: const Text('Privacy Policy'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.explicit_rounded,
            ),
            title: const Text('Terms and Condition'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.sentiment_satisfied,
            ),
            title: const Text('Rate Us'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.feedback,
            ),
            title: const Text('Feedback'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.share,
            ),
            title: const Text('Share'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.delete,
            ),
            title: const Text('Delete Account'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
            ),
            title: const Text('Logout'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
          ),
        ],
      ),
    ),
  


      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [
            Image.asset(
              "assets/home.jpg",
              height: 250,
              width: 400,
            ),
            const SizedBox(height: 20),
            Container(
             decoration: BoxDecoration(
              color: Colors.white, 
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5), // Light black shadow color
          spreadRadius: 0,
          blurRadius: 8,
          offset: const Offset(0, 2),
        )
                     ],
              // Adjust the offset as needed
        ),
             

                      width: double.infinity, // Ensure the Row expands horizontally
                      child:SingleChildScrollView(
                      child: Column(
                        children:[
                         /* const SizedBox(
                            height: 10,
                          ),*/
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const DonorScreen()),
                              );
                            },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              
                              shadowColor: Colors.black.withOpacity(0.2), // Light black shadow colo
                             // shadowColor: Color.fromRGBO(0, 0, 0, 0.2), // Light black shadow
                              backgroundColor: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/donate.jpg",
                                  height: 50.0,
                                  width: 50.0,
                                ),
                                 const SizedBox(width: 10),
                                const Text("Blood\nDonate",style: TextStyle(
                                  color: Colors.black,
                                ),),
                              ],
                            ),
                          ),
                          
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const  Donation()),
                              );
                            },
                           style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                             // shadowColor: Color.fromRGBO(0, 0, 0, 0.2), // Light black shadow
                             
                              shadowColor: Colors.black.withOpacity(0.2),
                              backgroundColor: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/need.jpg",
                                  height: 50.0,
                                  width: 50.0,
                                ),
                                const SizedBox(width: 10),
                                const Text("Blood\nNeed",style: TextStyle(
                                  color: Colors.black,
                                ),),
                              
                              ],
                            ),
                          ),
                        ]
                      ),
                      
                    
                    const SizedBox(
                      height: 15,
                    ),
                             SizedBox(
                      width: double.infinity, // Ensure the Row expands horizontally
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Profile()),
                              );
                            },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                             // shadowColor: Color.fromRGBO(0, 0, 0, 0.2), // Light black shadow
                             
                              shadowColor: Colors.black.withOpacity(0.2),
                              backgroundColor: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/profile.jpg",
                                  height: 50.0,
                                  width: 50.0,
                                ),
                                 const SizedBox(width: 10),
                                const Text("My\nProfile",style: TextStyle(
                                  color: Colors.black,
                                ),),
                              ],
                            ),
                          ),
                          
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const FactScreen()),
                              );
                            },
                           style: ElevatedButton.styleFrom(
                              
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                             // shadowColor: Color.fromRGBO(0, 0, 0, 0.2), // Light black shadow
                             
                              shadowColor: Colors.black.withOpacity(0.2),
                              backgroundColor: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/facts.jpg",
                                  height: 50.0,
                                  width: 50.0,
                                ),
                                const SizedBox(width: 10),
                                const Text("Blood\nFacts",style: TextStyle(
                                  color: Colors.black,
                                ),),
                              
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
            
            
            const SizedBox(height: 10),
            
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 //child:Expanded(
                child:DataTable(
                  columns: const[
                    DataColumn(label: Text('Type',style: TextStyle(fontSize: 13),softWrap: true,)),
                    DataColumn(label: Text('You can give\nblood to',style: TextStyle(fontSize: 13),softWrap: true,)),
                    DataColumn(label: Text('You Can Receive\nBlood From',style: TextStyle(fontSize: 13),softWrap: true,)),
                  ],
                  rows: [
                    for (var item in bloodCompatibilityData)
                      DataRow(cells: [
                        DataCell(Text(item[0],style:const TextStyle(fontSize: 13),)),
                        DataCell(Text(item[1],style: const TextStyle(fontSize: 13),)),
                        DataCell(Text(item[2],style: const TextStyle(fontSize: 13),)),
                      ]),
                  ],
                ),
                 )
               
              
            
          ],
        ),
      ),
            )
          ]
        )
      )
    )
    );
  }
}




