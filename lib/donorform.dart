import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

import 'database.dart';

class DonorScreen extends StatefulWidget {
  const DonorScreen({Key? key}) : super(key: key);

  @override
  State<DonorScreen> createState() => DonorScreenState();
}

class DonorScreenState extends State<DonorScreen> {
   final TextEditingController _nameTextEditingController =
      TextEditingController();
  final TextEditingController _addressTextEditingController =
      TextEditingController();
  final TextEditingController _phoneNumberTextEditingController =
      TextEditingController();
  final TextEditingController _weightTextEditingController =
      TextEditingController();
  String? _selectedBloodGroup;
  String? _selectedGender;

  List<String> bloodGroups = [
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-'
  ];
  List<String> genders = ['Male', 'Female', 'Other'];

  @override
  void initState() {
    super.initState();
    createDatabase().then((value) {
      setState(() {});
    });
  }

  void addDonarsInfo(BloodDonationClass cardObj) async {
    await insertData(cardObj);
    await getDonarsInfo();
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:GradientAppBar(
      title: const Text("Donor"),
     
          gradient: const LinearGradient(
            colors: [
              Color(0xffB81736),
              Color(0xff281537),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
    
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Center(
            child:Image.asset("assets/splash.jpg",height: 100,width: 200,),
            ),
            const Text(
              "Donor's form",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _nameTextEditingController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _addressTextEditingController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Address",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _phoneNumberTextEditingController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Phone Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _weightTextEditingController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Weight(kg)",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            const SizedBox(height: 20),
           
            DropdownButtonFormField<String>(
              value: _selectedBloodGroup,
              hint: const Text("Blood Group"),
              items: bloodGroups.map((String bloodGroup) {
                return DropdownMenuItem<String>(
                  value: bloodGroup,
                  child: Text(bloodGroup),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedBloodGroup = newValue;
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            const SizedBox(height: 20),
           
            DropdownButtonFormField<String>(
              value: _selectedGender,
              hint: const Text("Gender"),
              items: genders.map((String gender) {
                return DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedGender = newValue;
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  backgroundColor: Colors.redAccent
                ),
                
                
                onPressed: _submitDonation,
                child: const Text(
                  "Submit", style:TextStyle(
                            fontSize: 18,
                            fontWeight:FontWeight.w800,
                            color: Colors.white,
                  )
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submitDonation() async {
  if (_nameTextEditingController.text.isEmpty ||
      _addressTextEditingController.text.isEmpty ||
      _phoneNumberTextEditingController.text.isEmpty ||
      _selectedBloodGroup == null ||
      _selectedGender == null) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Validation Error"),
          content: const Text("Please fill in all fields."),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  } else {
    addDonarsInfo(
                      BloodDonationClass(
                        donarName: _nameTextEditingController.text,
                        bloodGroup: _selectedBloodGroup!,
                        weight: _weightTextEditingController.text,
                        gender: _selectedGender!,
                        phoneNo: _phoneNumberTextEditingController.text,
                        city: _addressTextEditingController.text,
                      ),
    );
    _nameTextEditingController.clear();
    _addressTextEditingController.clear();
    _phoneNumberTextEditingController.clear();
    _weightTextEditingController.clear();
    

    // Show success message
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Thank you"),
          //content: const Text("!"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
  }
  }

  