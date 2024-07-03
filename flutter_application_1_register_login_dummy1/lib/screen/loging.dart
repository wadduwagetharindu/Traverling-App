import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/forgot.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/signup.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

TextEditingController email= TextEditingController();
TextEditingController password= TextEditingController();

signIn() async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.text,
      password: password.text,
    );
  }
   catch (e) {

    // ignore: avoid_print
    print('Error signing in: $e');

   }
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 228, 225, 225),
      appBar: AppBar(title:const Text ("Login"),
      backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Image.asset('assets/images/Loginimage.jpg', 
            width: 370,
            height: 300,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20,bottom: 10,top: 20),
              child: TextField(
                controller: email,
                 style:const TextStyle(
                       height: 1,
                       fontSize: 17,
                      ),
                decoration: const InputDecoration(
                  hintText: "EnterEmail",
                   // background color change,should (filled:true)
                  filled: true,
                   fillColor: Colors.grey,
                  // hintText: 'Enter Last Name',
                  border: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.yellow,style: BorderStyle.solid,width: 5),                       
                  borderRadius : BorderRadius.all(Radius.circular(20.0),
                   ),
                ),
                  ),
              ),
            ),
        
             Padding(
               padding: const EdgeInsets.only(left: 20, right: 20),
               child: TextField(
                controller: password,
                 style:const TextStyle(
                         height: 1,
                         fontSize: 17,
                        ),
                decoration: const InputDecoration(
                  hintText: "Enter password",
                   filled: true, // background color change,should (filled:true)
                     fillColor: Colors.grey,
                    // hintText: 'Enter Last Name',
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
  padding: const EdgeInsets.only(left: 200),
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Forgot()),
      );
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 228, 225, 225)),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
    ),
    child: const Text("Forgot password?"),
  ),
),
            const SizedBox(height: 25),
        
             ElevatedButton(onPressed: (){ 
              if(email.text.isEmpty||
            password.text.isEmpty){
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("please enter all fields",
              ),
              duration: Duration(seconds: 2),
              ));
              return; //do not proceed with adding data
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
             content: Text("Please enter a valid email address or password!"),
              duration: Duration(seconds: 2),
            ),
          );
            }
           
            signIn();
            },
            
            //  (()=>signIn()),

             style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>( Colors.blue),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      
    ),
             child: const Padding(
               padding: EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
               child: Text("Login", style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  ),
                  ),
             )),
        
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (()=>Get.to(const Signup())),
            style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>( Colors.blue),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      
    ),
            child: const Padding(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 15,right: 15),
              child: Text("Register",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  ),
              ),
            )),

            const SizedBox(height: 30,),
          ],),
        ),
      )
    );
  }
}