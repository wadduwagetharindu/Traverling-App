import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {

  TextEditingController email= TextEditingController();
// TextEditingController password= TextEditingController();

// reset()async{
//   await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
  
// }

reset() async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
    // If the password reset email is sent successfully
    // You can add any further actions here, such as showing a confirmation message
  } catch (e) {
    // If an error occurs while sending the password reset email
    // Handle the error here
    // ignore: avoid_print
    print('Error sending password reset email: $e');
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("This Email Adderss Is Wrong!"),
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: const Color.fromARGB(255, 228, 225, 225),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:const Text ("Forgot password"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 30,top: 250),
            child: TextField(
              controller: email,
               style:const TextStyle(
                         height: 1,
                         fontSize: 17,
                        ),
              decoration: const InputDecoration(
                hintText: "EnterEmail",
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

          const SizedBox(height: 20,),

           ElevatedButton(onPressed: (){
             if( email.text.isEmpty){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("please enter field",),
            duration: Duration(seconds: 2),
            ));
            return; //do not proceed with adding data
          }
            reset();
           },
           
           style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>( Colors.blue),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      
    ),
            child:const Padding(
              padding: EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
              child: Text("send link",
               style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    ),),
            ),)
          
        ],),
      )
    );
  }
}