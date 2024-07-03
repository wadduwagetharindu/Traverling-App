import 'package:flutter/material.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/my_list_tile.dart';


class MyDrawer extends StatelessWidget {
  final void Function()? onProfileTap;
  final void Function()? onSignOut;
  const MyDrawer({super.key,
  required this.onProfileTap,
  required this.onSignOut
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Column(
        children: [
        const DrawerHeader(child: Icon(
          Icons.person,
          color: Colors.white,
          size: 64,
        ),
        ),

      
          MyListTile(icon: Icons.home,
         text: "home",
          onTap: () =>Navigator.pop(context),
          ),


          //profile list tile
          MyListTile(icon: Icons.person,
           text: "PROFILE", 
           onTap:onProfileTap ,
           ),
           ],
           ),

           //Kogout List tile
           Padding(
             padding: const EdgeInsets.only(bottom:25 ),
             child: MyListTile(icon: Icons.logout,
              text: "LOGOUT",
               onTap:onSignOut,
               ),
           ),
             ]),
    );
  }
}