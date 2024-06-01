import 'package:flutter/material.dart';
import 'first.dart';
import 'database.dart';
void main() async{
  
  WidgetsFlutterBinding.ensureInitialized();
  await createDatabase();
  await getDonarsInfo();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First(),//First Screen
    );
  }
}
