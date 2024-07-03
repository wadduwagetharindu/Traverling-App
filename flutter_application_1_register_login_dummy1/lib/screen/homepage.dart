import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/ampara.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/anuradhapura.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/badulla.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/batticaloa.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/colombo.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/drawer.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/gampaha.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/hambantota.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/jaffna.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/kalutara.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/Galle.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/kandy.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/kegalle.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/kurunagala.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/mannar.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/matale.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/matara.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/nuwaraEliya.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/polonnaruwa.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/profile_page.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/ratnapura.dart';
import 'package:flutter_application_1_register_login_dummy1/screen/trincomalee.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   late final PageController pageController;
  final ScrollController _scrollController = ScrollController();
  int pageNo = 0;

  Timer? carasouelTmer;

  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 2), (timer) {

       try {
      if (pageNo == 5) {
        pageNo = 0;
      }
      pageController.animateToPage(
        pageNo,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCirc,
      );
      pageNo++;
    } catch (e) {
      // ignore: avoid_print
      print('Error occurred: $e');
    }
    });
  }

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    carasouelTmer = getTimer();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        showBtmAppBr = false;
        setState(() {});
      } else {
        showBtmAppBr = true;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  bool showBtmAppBr = true;

  final user= FirebaseAuth.instance.currentUser;

  void signOut(){
    FirebaseAuth.instance.signOut();
  }

  //navigate to profile page
  void goToProfilePage(){
    Navigator.pop(context);

    //go to profile page
    Navigator.push(
      context,MaterialPageRoute(
        builder: (context) => const ProfilePage(),
    ),
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
         appBar: AppBar(
        title: const Text("Homepage"),
      backgroundColor: Colors.blue,
      ),
      drawer:  MyDrawer(
        onProfileTap:goToProfilePage,
        onSignOut: signOut,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              const SizedBox(
                height: 36.0,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: ListTile(
                  onTap: () {},
                  selected: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  selectedTileColor: Colors.indigoAccent.shade100,
                  title: Text(
                    "Discover SRI LANKA",
                    style: Theme.of(context).textTheme.titleMedium!.merge(
                          const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0,
                          ),
                        ),
                  ),
                  subtitle: Text(
                    "A Greet welcome to you all.",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  trailing: PopUpMen(
                    menuList: const [],
                    icon: CircleAvatar(
                      backgroundColor: const Color.fromARGB(0, 239, 6, 111),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: const AssetImage('assets/images/ab.jpg'),
                        child: Container(),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (index) {
                    pageNo = index;
                    setState(() {});
                  },
                  itemBuilder: (_, index) {
                    return AnimatedBuilder(
                      animation: pageController,
                      builder: (ctx, child) {
                        return child!;
                      },
                      child: GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(""),
                            ),
                          );
                        },
                        onPanDown: (d) {
                          carasouelTmer?.cancel();
                          carasouelTmer = null;
                        },
                        onPanCancel: () {
                          carasouelTmer = getTimer();
                        },
                        child: TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(""),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                              right: 8,
                              left: 8,
                              top: 24,
                              bottom: 12,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              color: const Color.fromARGB(255, 64, 62, 192),
                            ),
                            child: Stack(
                              children: [
                                // Image
                                Image.asset(
                                  index == 0
                                      ? "assets/images/Hiking.jpg"
                                      : index == 1
                                          ? "assets/images/Camping.webp"
                                          : index == 2
                                              ? "assets/images/Diving.jpg"
                                              : index == 3
                                                  ? "assets/images/WaterRaffing.jpg"
                                                  : "assets/images/Safari1.jpg",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    color: Colors.black54,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8),
                                    child: Center(
                                      child: Text(
                                        index == 0
                                            ? "Hiking"
                                            : index == 1
                                                ? "Camping"
                                                : index == 2
                                                    ? "Diving"
                                                    : index == 3
                                                        ? "Water raffing"
                                                        : "Safari",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 5,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.circle,
                        size: 12.0,
                        color: pageNo == index
                            ? Colors.indigoAccent
                            : Colors.grey.shade300,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: GridB(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AnimatedContainer(
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOutSine,
        height: showBtmAppBr ? 40 : 0,
        child: Image.asset(
          'assets/images/NAVI1.png',
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class PopUpMen extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  const PopUpMen({Key? key, required this.menuList, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      itemBuilder: ((context) => menuList),
      icon: icon,
    );
  }
}

class FabExt extends StatelessWidget {
  const FabExt({
    Key? key,
    required this.showFabTitle,
  }) : super(key: key);

  final bool showFabTitle;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      label: AnimatedContainer(
        duration: const Duration(seconds: 2),
        padding: const EdgeInsets.all(12.0),
      ),
    );
  }
}

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Badulla",
      "images": "assets/images/Badulla.jpg",
    },
    {
      "title": "Kandy",
      "images": "assets/images/Kandy.jpg",
    },
    {
      "title": "Anuradhapura",
      "images": "assets/images/Anuradhapura.png",
    },
    {
      "title": "Nuwara Eliya",
      "images": "assets/images/NuwaraEliya.jpg",
    },
    {
      "title": "Jaffna",
      "images": "assets/images/Jaffna.jpg",
    },
    {
      "title": "Galle",
      "images": "assets/images/Galle.webp",
    },
    {
      "title": "Colombo",
      "images": "assets/images/Colombo.jpg",
    },
    {
      "title": "Matale",
      "images": "assets/images/Matale.jpg",
    },
    {
      "title": "Matara",
      "images": "assets/images/Matara.jpg",
    },
    {
      "title": "Ratnapura",
      "images": "assets/images/Ratnapura.webp",
    },
    {
      "title": "Kegalle",
      "images": "assets/images/Kegalle.jpg",
    },
    {
      "title": "Hambantota",
      "images": "assets/images/Hambantota.jpg",
    },
    {
      "title": "Gampaha",
      "images": "assets/images/Gampaha.jpg",
    },
    {
      "title": "Kurunagala",
      "images": "assets/images/Kurunagala.webp",
    },
    {
      "title": "Kalutara",
      "images": "assets/images/Kalutara.jpg",
    },
    {
      "title": "Trincomalee",
      "images": "assets/images/Trincomalee.jpg",
    },
    {
      "title": "Polonnaruwa",
      "images": "assets/images/Polonnaruwa.jpg",
    },
    {
      "title": "Ampara",
      "images": "assets/images/Ampara.jpg",
    },
    {
      "title": "Batticaloa",
      "images": "assets/images/Batticaloa.jpg",
    },
    {
      "title": "Mannar",
      "images": "assets/images/Mannar.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 210,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return GestureDetector(
          onTap: () {
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.amberAccent.shade100,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

  GestureDetector(
  child: ClipRRect(
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(16.0),
      topRight: Radius.circular(16.0),
    ),

    child: GestureDetector(
  onTap: () {
     String title = gridMap[index]['title'];
    switch (title) {
      case "Badulla":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Badulla(image: gridMap[index]['images'], text: title),
          ),
        );
        break;
      case "Anuradhapura":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Anuradhapura(image: gridMap[index]['images'], text: title),
          ),
        );
        break;
      case "Nuwara Eliya":
        Navigator.push(
          context,
          MaterialPageRoute(
            // builder: (context) => Kandy(image: gridMap[index]['images'], text: title),
             builder: (context) => NuwaraEliya(image: null, text: null,),
          ),
        );
         break;
      case "Colombo":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Colombo(image: gridMap[index]['images'], text: title),
          ),
        );
         break;
      case "Batticaloa":
        Navigator.push(
          context,
          MaterialPageRoute(
             builder: (context) => Batticaloa(image: null, text: null,),
          ),
        );
        break;
      case "Matale":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Matale(image: gridMap[index]['images'], text: title),
          ),
        );
        break;
      case "Ampara":
        Navigator.push(
          context,
          MaterialPageRoute(
             builder: (context) => Ampara(image: null, text: null,),
          ),
        );
        break;
      case "Kurunagala":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Kurunagala(image: gridMap[index]['images'], text: title),
          ),
        );
        break;
      case "Trincomalee":
        Navigator.push(
          context,
          MaterialPageRoute(
             builder: (context) => Trincomalee(image: null, text: null,),
          ),
        );
        break;
      case "Hambantota":
        Navigator.push(
          context,
          MaterialPageRoute(
             builder: (context) => Hambantota(image: null, text: null,),
          ),
        );
        break;
      case "Gampaha":
        Navigator.push(
          context,
          MaterialPageRoute(
             builder: (context) => Gampaha(image: null, text: null,),
          ),
        );
        break;  
      case "Jaffna":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Jaffna(image: gridMap[index]['images'], text: title),
          ),
        );
         break;
      case "Mannar":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Mannar(image: gridMap[index]['images'], text: title),
          ),
        );
        break;
      case "Ratnapura":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Ratnapura(image: gridMap[index]['images'], text: title),
          ),
        );
         break;
      case "Kegalle":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Kegalle(image: gridMap[index]['images'], text: title),
          ),
        );
        break;
      case "Polonnaruwa":
        Navigator.push(
          context,
          MaterialPageRoute(
             builder: (context) => Polonnaruwa(image: null, text: null,),
          ),
        );
        break;
      case "Matara":
        Navigator.push(
          context,
          MaterialPageRoute(
             builder: (context) => Matara(image: null, text: null,),
          ),
        );
        break;
      case "Kalutara":
        Navigator.push(
          context,
          MaterialPageRoute(
             builder: (context) => Kalutara(image: null, text: null,),
          ),
        );
        break;
         case "Galle":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Galle(image: gridMap[index]['images'], text: title),
          ),
        );
         break;
        case "Kandy":
        Navigator.push(
          context,
          MaterialPageRoute(
             builder: (context) => Kandy(image: null, text: null,),
          ),
        );
        break;
        
      default:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(image: gridMap[index]['images'], text: title),
          ),);
  }},
  child: Image.asset(
    "${gridMap.elementAt(index)['images']}",
    height: 168,
    width: 170,
    fit: BoxFit.cover,
  ),
),
),
),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${gridMap.elementAt(index)['title']}",
                        style: Theme.of(context).textTheme.titleMedium!.merge(
                              const TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class DetailPage extends StatelessWidget {
  final String image;
  
 final String text;

  const DetailPage({Key? key, required this.image,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title:  Text(text),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),
            const SizedBox(height: 20), // Adjust the spacing as needed
            const Text(
              "Your text goes here",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

