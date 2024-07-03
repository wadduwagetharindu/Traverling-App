

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/wrapper.dart';
import 'package:get/get.dart';



class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}
// ignore: non_constant_identifier_names
TextEditingController Fname= TextEditingController();
// ignore: non_constant_identifier_names
TextEditingController Lname= TextEditingController();
TextEditingController email= TextEditingController();
TextEditingController password= TextEditingController();
final databaseReference = FirebaseDatabase.instance.ref("Store");

class _SignupState extends State<Signup> {


// signup()async{
//   await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
//   Get.offAll(Wrapper());
// }


signup() async {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email.text,
      password: password.text,
    );

      databaseReference.child(DateTime.now().microsecondsSinceEpoch.toString()).set({
         'email': email.text.toString(),
         'password': password.text.toString(),
         'First Name': Fname.text.toString(),
         'Last Name': Lname.text.toString(),
         'id': DateTime.now().microsecondsSinceEpoch.toString(),
          });


    Get.offAll(const Wrapper());
  } catch (e) {
    // Handle the error here
    // ignore: avoid_print
    print('Error signing up: $e');
     // ignore: use_build_context_synchronously
     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("This Email Alread Used!",),
            ),);
    // {
    //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("at lease 6",
    //         ),
    //         duration: Duration(seconds: 2),
    //         ));
    //         return; //do not proceed with adding data
    //       }
    // You can show a snackbar, toast, or any other UI to inform the user about the error.
  }
}




// signup() async {
//   try {
//     // Create the user account with email and password
//     UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//       email: email.text,
//       password: password.text,
//     );

//     // Get the user's name from the name text field
    
//     String userName = Lname.text;

//     // Set the display name of the user
//     await userCredential.user?.updateDisplayName(userName);

//     // Navigate to the next screen after signup
//     Get.offAll(Wrapper());
//   } catch (e) {
//     // Handle the error here
//     print('Error signing up: $e');
//      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("This Email Already Use! ",
//             ),),);
//     // You can show a snackbar, toast, or any other UI to inform the user about the error.
//   }
// }



  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 233, 167, 178),
       backgroundColor: const Color.fromARGB(255, 228, 225, 225),
           appBar: AppBar(title:const Text ("SignUp"),
            backgroundColor: Colors.blue,),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset("assets/images/registerpage.jpg",
           width: 370,
          height: 300,),
           const Padding(
                 padding: EdgeInsets.only(right: 210,top: 18),
                 child: Text("CREATE AN ACCOUNT"),
               ),


           Padding(
            padding: const EdgeInsets.only(left: 25, right: 40,top: 10),
            child: TextField(
               controller: Fname,
               style:const TextStyle(
                   height: 1,
                   fontSize: 17,
                  ),
               decoration: const InputDecoration(  
               filled: true, // background color change,should (filled:true)
               fillColor: Colors.grey,
              hintText: 'Enter First Name',
              border: OutlineInputBorder(
               borderSide: BorderSide(color: Colors.yellow,style: BorderStyle.solid,width: 5),                       
              borderRadius : BorderRadius.all(Radius.circular(20.0),
               ),
            ),
                       
            ),
            ),
          ),
        
     


          Padding(
            padding: const EdgeInsets.only(left: 25, right: 40,top: 10),
            child: TextField(
               controller: Lname,
               style:const TextStyle(
                   height: 1,
                   fontSize: 17,
                  ),
               decoration: const InputDecoration(  
               filled: true, // background color change,should (filled:true)
               fillColor: Colors.grey,
              hintText: 'Enter Last Name',
              border: OutlineInputBorder(
                      // borderSide: BorderSide(color: Color.fromARGB(255, 208, 69, 4),width: 5),
               borderSide: BorderSide(color: Colors.yellow,style: BorderStyle.solid,width: 5),                       
              borderRadius : BorderRadius.all(Radius.circular(20.0),
               ),
            ),
                       
            ),
            ),
          ),

        
           Padding(
            padding: const EdgeInsets.only(left: 25, right: 40,top: 10),
            child: TextField(
               controller: email,
               style:const TextStyle(
                   height: 1,
                   fontSize: 17,
                  ),
               decoration: const InputDecoration(  
               filled: true, // background color change,should (filled:true)
               fillColor: Colors.grey,
              hintText: 'Enter Email',
              border: OutlineInputBorder(
                      // borderSide: BorderSide(color: Color.fromARGB(255, 208, 69, 4),width: 5),
               borderSide: BorderSide(color: Colors.yellow,style: BorderStyle.solid,width: 5),                       
              borderRadius : BorderRadius.all(Radius.circular(20.0),
               ),
            ),
                       
            ),
            ),
          ),
          
        
           Padding(
            padding: const EdgeInsets.only(left: 25, right: 40,top: 10),
            child: TextField(
               controller: password,
               style:const TextStyle(
                   height: 1,
                   fontSize: 17,
                  ),
               decoration: const InputDecoration(  
               filled: true, // background color change,should (filled:true)
               fillColor: Colors.grey,
              hintText: 'Enter Password',
              border: OutlineInputBorder(
                      // borderSide: BorderSide(color: Color.fromARGB(255, 208, 69, 4),width: 5),
               borderSide: BorderSide(color: Colors.yellow,style: BorderStyle.solid,width: 5),                       
              borderRadius : BorderRadius.all(Radius.circular(20.0),
               ),
            ),
                       
            ),
            ),
          ),


           Row(
                 mainAxisAlignment: MainAxisAlignment.center,
               children: [

                Checkbox(
  value: false,
  onChanged: (isChecked) {
    setState(() {});
  },
  checkColor: Colors.blue,
),
        
              //     Checkbox(
              //   value: false,
              // //  checkColor: Colors.red,
              // //  overlayColor: MaterialStatePropertyAll(Colors.red),
              //              //    fillColor: MaterialStatePropertyAll(Colors.red),
               
              //    onChanged: (v){},
              //    checkColor: Colors.blue,
              //    ),

//               bool isChecked = false;

// Checkbox(
//   value: isChecked,
//   onChanged: (value) {
//     setState(() {
//       isChecked = value!;
//     });
//   },
//   checkColor: Colors.blue,
// ),
               const Text(
                "I agree the terms of service and privancy policy",
                style: TextStyle(color: Colors.black),
               ),
               const Spacer(),
              
               ],
             ),
                
                
        ElevatedButton(
        onPressed: () {
           if(Fname.text.isEmpty||
           Lname.text.isEmpty||
           email.text.isEmpty||
          password.text.isEmpty){
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("please enter all fields",
            ),
            duration: Duration(seconds: 2),
            ));
            return; //do not proceed with adding data
          }
          if(password.text.length <6){
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Enter At Least 6 Characters For Password",
            ),
            duration: Duration(seconds: 2),
            ));
            return; 
          }

          bool isEmailValid(String email) {
  // Regular expression for email validation
         final RegExp emailRegex =
         RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  // Check if the email matches the regex pattern
       return emailRegex.hasMatch(email);
}

          if (!isEmailValid(email.text)) {
            ScaffoldMessenger.of(context).showSnackBar(
           const SnackBar(
           content: Text("Please enter a valid email address"),
            duration: Duration(seconds: 2),
    ),
  );
  return;
}

          signup();
        //   databaseReference.child(DateTime.now().microsecondsSinceEpoch.toString()).set({
        //  'email': email.text.toString(),
        //  'password': password.text.toString(),
        //  'First Name': Fname.text.toString(),
        //  'Last Name': Lname.text.toString(),
        //  'id': DateTime.now().microsecondsSinceEpoch.toString(),
        //   });
        },
           style: ElevatedButton.styleFrom(
           backgroundColor: Colors.blue[600],
                ),
        child: const Padding(
          padding: EdgeInsets.only(top: 8,bottom: 8,left: 10,right: 10),
          child: Text("Sign Up",
          style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  ),
                  ),
        ),
                ),
                
          
        ],),
      )
    );
  }
}









































// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1_register_login_dummy1/screen/wrapper.dart';
// // import 'package:flutter_application_2_flutter_fly_email_password_authentication/screen/wrapper.dart';///
// import 'package:get/get.dart';



// class Signup extends StatefulWidget {
//   const Signup({super.key});

//   @override
//   State<Signup> createState() => _SignupState();
// }

// // final nameController = TextEditingController();

// TextEditingController email= TextEditingController();
// TextEditingController password= TextEditingController();
// TextEditingController Name= TextEditingController();
// final databaseReference = FirebaseDatabase.instance.ref("Store");

// class _SignupState extends State<Signup> {

// // TextEditingController email= TextEditingController();
// // TextEditingController password= TextEditingController();

// // signup()async{
// //   await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
// //   Get.offAll(Wrapper());
// // }


// // signup() async {
// //   try {
// //    UserCredential credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
// //       email: email.text,
// //       password: password.text,
// //     );

// //     //after creating the user, create a new document
// //     FirebaseDatabase.instance
// //     .collection("users")
// //     .doc(UserCredential.user!.email);


// //     Get.offAll(Wrapper());
// //   } catch (e) {
// //     // Handle the error here
// //     print('Error signing up: $e');
// //     // You can show a snackbar, toast, or any other UI to inform the user about the error.
// //   }
// // }





// signup() async {
//   try {
//     // Create the user account with email and password
//     UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//       email: email.text,
//       password: password.text,
//     );

//     // Get the user's name from the name text field
    
//     String userName = Name.text;

//     // Set the display name of the user
//     await userCredential.user?.updateDisplayName(userName);

//     // Navigate to the next screen after signup
//     Get.offAll(Wrapper());
//   } catch (e) {
//     // Handle the error here
//     print('Error signing up: $e');
//     // You can show a snackbar, toast, or any other UI to inform the user about the error.
//   }
// }


  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:Text ("SignUp"),),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(children: [
//           TextField(
//             controller: email,
//             decoration: InputDecoration(hintText: "EnterEmail"),
//           ),

//            TextField(
//             controller: password,
//             decoration: InputDecoration(hintText: "Enter password"),
//           ),

//            TextField(
//             controller: Name,
//             decoration: InputDecoration(hintText: "Enter Name"),
//           ),

      
//   ElevatedButton(
//   onPressed: () {
//      if(email.text.isEmpty||
//           password.text.isEmpty||
//           Name.text.isEmpty){
//             ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("please enter all fields",
//             ),
//             duration: Duration(seconds: 2),
//             ));
//             return; //do not proceed with adding data
//           }
//     signup();
//     databaseReference.child(DateTime.now().microsecondsSinceEpoch.toString()).set({
//       'email': email.text.toString(),
//       'password': password.text.toString(),
//       'Name': Name.text.toString(),
//       'id': DateTime.now().microsecondsSinceEpoch.toString(),
//     });
//   },
//   child: Text("Sign Up"),
// )


          
//         ],),
//       )
//     );
//   }
// }