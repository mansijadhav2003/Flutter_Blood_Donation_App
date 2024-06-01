
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;
List<BloodDonationClass> listOfDonars = [];

class BloodDonationClass {
  int? donarID;
  final String donarName;
  final String bloodGroup;
  final String weight;
  final String gender;
  final String phoneNo;
  final String city;

  BloodDonationClass({
    this.donarID,
     required this.donarName,
    required this.bloodGroup,
    required this.weight,
    required this.gender,
    required this.phoneNo,
    required this.city,
  });

  Map<String, dynamic> mapFormatData() {
     return {
      'donarID': donarID,
      'donarName': donarName,
      'bloodGroup': bloodGroup,
      'weight': weight,
      'gender': gender,
      'phoneNo': phoneNo,
      'city': city,
    };
    //if(!excludeID){
      //map['donorID']=donarID;
    //}
    //return map;

  }
}

// create Database or connection
Future createDatabase() async {
  database = openDatabase(
    join(await getDatabasesPath(), "BloodDonationDB2.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE BloodDonation1(
            donarID INTEGER PRIMARY KEY,
            donarName TEXT,
            bloodGroup TEXT,
            weight TEXT,
            gender TEXT,
            phoneNo TEXT,
            city TEXT
        )''');
    },
  );
}
/*Future<Database> createDatabase() async {
  database = await openDatabase(
    join(await getDatabasesPath(), "BloodDonationDB2.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE BloodDonation1(
            donarID INTEGER PRIMARY KEY,
            donarName TEXT,
            bloodGroup TEXT,
            weight TEXT,
            gender TEXT,
            phoneNo TEXT,
            city TEXT
        )''');
    },
  );
  return database;
}*/

// Insert Data to the database
Future insertData(BloodDonationClass cardObj) async {
  final localDB = await database;

  await localDB.insert(
    'BloodDonation1',
    cardObj.mapFormatData(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
  print("data inserted successfuly");
}

// delete Data from database
Future deleteData(BloodDonationClass cardObj) async {
  final localDB = await database;

  await localDB.delete(
    'BloodDonation1',
    where: 'donarID= ?',
    whereArgs: [cardObj.donarID],
  );
  print("delete successfuly");
}

// update data from the database
Future<void> updateData(BloodDonationClass cardObj) async {
  final localDB = await database;
  //print("In update");
  //print(cardObj.donarName);
 
  await localDB.update(
    'BloodDonation1',
    cardObj.mapFormatData(),
    where: ' donarID = ?',
    whereArgs: [cardObj.donarID],
   // await getDonarsInfo(),
  );
  
  //await getDonarsInfo();

 // print("updated data successfuly");
}

Future getDonarsInfo() async {
  final localDB = await database;

  List<Map<String, dynamic>> mapFormatList =
      await localDB.query("BloodDonation1");
      
  listOfDonars = List.generate(mapFormatList.length, (index) {
  //  print(mapFormatList[index]['donarID']);
    print(mapFormatList[index]['donarName']);
    return BloodDonationClass(
      donarID: mapFormatList[index]['donarID'],
      donarName: mapFormatList[index]['donarName'],
      bloodGroup: mapFormatList[index]['bloodGroup'],
      weight: mapFormatList[index]['weight'],
      gender: mapFormatList[index]['gender'],
      phoneNo: mapFormatList[index]['phoneNo'],
      city: mapFormatList[index]['city'],
    );
  });
 print("fetch data successfully");
}
