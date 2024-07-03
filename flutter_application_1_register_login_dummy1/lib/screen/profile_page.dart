import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/text_box.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // ignore: unused_field
  final Future<FirebaseApp> _fApp = Firebase.initializeApp();


  String realTimeValue = '0';
  String getOnceValue = '0';


  DatabaseReference dbRef = FirebaseDatabase.instance.ref().child("Store");
  
  //user
  final currentUser = FirebaseAuth.instance.currentUser!;

  ///edit field
  Future<void>editFild(String field)async{}

  final ref = FirebaseDatabase.instance.ref('Store');

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("profilepage"),
        backgroundColor: Colors.blue,
        ),

       body: ListView(
          children: [
            const SizedBox(height: 10,),

            //profile picture
            const Icon(Icons.person,
            size: 72,),

              const SizedBox(height: 50,),

            //user email
            Text( currentUser.email!,
            textAlign: TextAlign.center,),

            // user details
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text("My Details",style: TextStyle(color: Colors.grey[600]),),
            ),

            // usrename
            MyTextBox(text: "Kumara: $realTimeValue",
             sectionName: "username",
             onPressed: ()=>editFild('ussername'),),

             //bio
             MyTextBox(
              text: "empty bio", 
             sectionName: "bio", onPressed: () => editFild('bio'),),
           
          ],),
    );
  }}
