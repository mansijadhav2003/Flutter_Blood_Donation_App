import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'database.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class Donation extends StatefulWidget {
  const Donation({super.key});

  @override
  State<Donation> createState() => _DonationState();
}

List<BloodDonationClass> listOfBloodDonars = [];


class _DonationState extends State<Donation> {
  
  void removeData(BloodDonationClass cardObj)async{
    await createDatabase();
    await deleteData(cardObj);
    fetchDataFromDB();
  
  }

  void fetchDataFromDB()async{
    await createDatabase();
     await getDonarsInfo();
    //listOfBloodDonars = listOfDonars;
    setState((){
      listOfBloodDonars = listOfDonars;
      //listOfDonars=listOfBloodDonars;
     });
     //await getDonarsInfo();
  }

  @override
  void initState() {
    super.initState();
    fetchDataFromDB();
  }

  List<Map<String, dynamic>> donorList = [];
  final TextEditingController _nameEditingController =
      TextEditingController();
  final TextEditingController _addressEditingController =
      TextEditingController();
  final TextEditingController _phoneNumberEditingController =
      TextEditingController();
  final TextEditingController _weightEditingController = TextEditingController();
  String? _selectedBloodGroupEditing;
  String? _selectedGenderEditing;

  List<String> bloodGroupListForEditing = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'];
  List<String> genderListForEditing = ['Male', 'Female', 'Other'];

  void editDonorsInfo(int index,BloodDonationClass cardObj) async {
  await createDatabase();

  // Update local state and database asynchronously
  await updateData(cardObj);
  await getDonarsInfo();
  fetchDataFromDB();
  setState(() {
    listOfBloodDonars[index] = cardObj;
  });
  await getDonarsInfo();

  
}

  /*void editDonarsInfo(int index,BloodDonationClass cardObj)async{
    await createDatabase();
    await updateData(cardObj);
      //await getDonarsInfo();
    setState(() {
     listOfBloodDonars[index]=cardObj;
    });
    await getDonarsInfo();
  }*/

  void showBottomSheet(bool isEdit,[BloodDonationClass? cardObj]) {
    _nameEditingController.text = cardObj!.donarName;
    _addressEditingController.text = cardObj.city;
    _phoneNumberEditingController.text = cardObj.phoneNo;
    _weightEditingController.text = cardObj.weight;
    _selectedBloodGroupEditing = cardObj.bloodGroup;
    _selectedGenderEditing = cardObj.gender;

    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: const Color.fromRGBO(248, 248, 248, 1),
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: SingleChildScrollView(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
          TextField(
              controller: _nameEditingController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _addressEditingController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Address",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _phoneNumberEditingController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Phone Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _weightEditingController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Weight(kg)",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            const SizedBox(height: 20),
           
            DropdownButtonFormField<String>(
              value: _selectedBloodGroupEditing,
              hint: const Text("Blood Group"),
              items: bloodGroupListForEditing.map((String bloodGroup) {
                return DropdownMenuItem<String>(
                  value: bloodGroup,
                  child: Text(bloodGroup),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedBloodGroupEditing= newValue;
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
              value: _selectedGenderEditing,
              hint: const Text("Gender"),
              items: genderListForEditing.map((String gender) {
                return DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedGenderEditing= newValue;
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
             child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.redAccent,
                  ),
                  onPressed: () {
                    if (_nameEditingController.text.isEmpty ||
                        _addressEditingController.text.isEmpty ||
                        _phoneNumberEditingController.text.isEmpty ||
                        _selectedBloodGroupEditing == null ||
                        _selectedGenderEditing == null) {
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
                      // ignore: unnecessary_null_comparison
                      if(isEdit && cardObj != null){
                        //listOfBloodDonars.indexOf(cardObj!),
                         editDonorsInfo(
                         // cardObj.donarID!,
                          listOfBloodDonars.indexOf(cardObj),
                          BloodDonationClass(
                            donarName: _nameEditingController.text, 
                            bloodGroup: _selectedBloodGroupEditing!, 
                            weight: _weightEditingController.text, 
                            gender: _selectedGenderEditing!, 
                            phoneNo: _phoneNumberEditingController.text, 
                            city: _addressEditingController.text,
                          )
                         // fetchDataFromDB(),
                        );

                        
                       // ret.then((val) => getDonarsInfo());
                        
                      }
                      Navigator.pop(context);
                      _nameEditingController.clear();
                      _addressEditingController.clear();
                      _phoneNumberEditingController.clear();
                      _selectedBloodGroupEditing = null;
                      _selectedGenderEditing = null;
                      setState(() {});
                      // Show SnackBar
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Row(
                            children: [
                              Icon(Icons.check_circle, color: Colors.green),
                              SizedBox(width: 10),
                              Text('Data submitted successfully!'),
                            ],
                          ),
                          backgroundColor:Colors.redAccent,
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  },
                  child: Text(
                    "Submit",
                    style: GoogleFonts.inter(
                      backgroundColor: Colors.redAccent,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                )
              
            ),

          ]
        )
          )
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
      title: const Text("Need"),
      
          gradient: const LinearGradient(
            colors: [
              Color(0xffB81736),
              Color(0xff281537),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      
    
      body: Padding(
        
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 5,
        ),
        
        child: ListView.builder(
          scrollDirection: Axis.vertical,
      
          shrinkWrap: true,
          itemCount: listOfBloodDonars.length,
          itemBuilder: (context, index) {
            return Slidable(
              closeOnScroll: true,
              endActionPane: ActionPane(
                extentRatio: 0.2,
                motion: const DrawerMotion(),
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                       /* GestureDetector(
                          onTap: () {
                            
                             showBottomSheet(true,listOfBloodDonars[index]);
                            
                             setState(() {
                               
                             });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 109, 170, 221),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),*/
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            removeData(listOfBloodDonars[index]);
                            setState(() {
                              
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(30, 65, 94, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.delete,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              key: ValueKey(index),
              //child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, 0.05),
                    width: 0.5,
                  ),
                  
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [

                      Color.fromRGBO(100, 122, 201, 0.678),
                      Color.fromRGBO(175, 202, 245, 0.682),
                      Color.fromRGBO(255, 255, 255, 1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(189, 206, 239, 1),
                      // spreadRadius: 2,
                      offset: Offset(5, 5),
                      blurRadius: 2,
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 20,
                  top: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                          child: Image.asset("assets/donatebloodicon-removebg-preview.png"),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name : ${listOfBloodDonars[index].donarName} ",
                              style: GoogleFonts.quicksand(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(183, 9, 9, 9),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Blood Grp: ${listOfBloodDonars[index].bloodGroup}",
                                  style: GoogleFonts.quicksand(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(95, 93, 93, 0.718),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Gen: ${listOfBloodDonars[index].gender}",
                                  style: GoogleFonts.quicksand(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(95, 93, 93, 0.718),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Text(
                                  "wgt: ${listOfBloodDonars[index].weight}",
                                  style: GoogleFonts.quicksand(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(95, 93, 93, 0.718),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Cont No: ${listOfBloodDonars[index].phoneNo}",
                                  style: GoogleFonts.quicksand(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(95, 93, 93, 0.718),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}