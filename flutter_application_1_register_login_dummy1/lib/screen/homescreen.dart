import 'package:flutter/material.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/wrapper.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
        body: SafeArea(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: ListView(
              children:<Widget> [  
                    Padding(
                      padding: const EdgeInsets.only(top: 110),
                      child: Image.asset("assets/images/HomeImage.jpg",
                      width: 150,height: 300,
                      ),
                    ),
                    const Center(child: Text("TIME TO TRAVEL",
                    style: TextStyle(
                      letterSpacing:2,
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight:FontWeight.w900,
                      ),
                      ),
                      ),
                    const Center(child: Text("In Sri Lanka",
                     style: TextStyle(
                      color: Colors.black,
                       fontFamily:'Caveat',
                      fontSize: 20,
                      fontWeight:FontWeight.w900,
                      ),
                      ),
                      ),
                    const Center(child: Padding(
                      padding: EdgeInsets.only(right: 120),
                      child: Text("ARE YOU READY ?",
                       style: TextStyle(
                      color: Colors.black,
                      fontWeight:FontWeight.w800,
                      ),),
                    ),
                    ),
                    const Center(child: Text("Let's Start Journey, Enjoy beautiful movements life!",
                    style: TextStyle(
                      fontSize: 8,
                      ),
                      ),
                      ),
                     Padding(
                       padding: const EdgeInsets.only(top: 20, left: 110, right: 110),
                       child: ElevatedButton(
                                 onPressed: (){
                                   Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Wrapper()), // Replace LoginPage with the name of your login page
              );
                                 },
                                     style: ElevatedButton.styleFrom(
                                       backgroundColor: Colors.blue,
                                     ),
                                     
                                  child:  const Padding(
                                    padding: EdgeInsets.only(top: 10,bottom: 10),
                                    child: Text(
                                     "EXPLORE",
                                     style: TextStyle(
                                       fontSize: 25,
                                       color: Colors.black,
                                       ),
                                       ),
                                  ),
                                     ),
                     ),
                      const Spacer(),
              ],
            ),
          ),
        ),
    );
  }
}


