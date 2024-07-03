import 'package:flutter/material.dart';

class Kegalle extends StatelessWidget {
  Kegalle({Key? key, required image, required String text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: "Pinnawala Elephant Orphanage",
        subtitle: 'See more...',
        image: "assets/images/Pinnawala Elephant Orphanage.jpg",
        description:
            'The Pinnawala Elephant Orphanage is situated northwest of the town of Kegalle, halfway between the present capital Colombo and the ancient royal residence Kandy. It was established in 1975 by the Sri Lanka Wildlife Department in a 25 acre coconut property adjoining the Maha Oya River. The orphanage was originally founded in order to afford care and protection to the many orphaned Elephants found in the jungles of Sri Lanka.'),
    Place(
        name: "Millennium Elephant Foundation",
        subtitle: 'See more...',
        image: "assets/images/Millennium Elephant Foundation.jpg",
        description:
            'Spanning a 15-acre estate that is located around 10 kilometres to the northwest of the town of Kegalle, the Millennium Elephant Foundation (MEF) is a charity that rescues and subsequently cares for captive Asian elephants in Sri Lanka. It raises money for its activities through tourist fees and volunteer programs. The funds it raises are then used to improve the conditions and care it provides for its elephants, as well as to run educational programs for local farmers and their families, raising awareness of the importance of protecting local wild elephants.'),
    Place(
        name: "Kithulgala Water Rafting",
        subtitle: 'See more...',
        image: "assets/images/Kithulgala Water Rafting.jpg",
        description:
            'A perfect destination for all the adventure enthusiasts and thrill-seekers out there, Kitulgala is a small town that is one of the wettest places of Sri Lanka. This quaint, little town experiences two monsoons and is the wet zone rainforest. Satiating the thirst of adventure among travelers, this destination offers hiking to mysterious caves, waterfalls, rafting in the high tides of crystal white water, adventure training programs, and much more.'),
    Place(
        name: "Pinnawala Zoo",
        subtitle: 'See more...',
        image: "assets/images/Pinnawala Zoo.jpg",
        description:
            'Pinnawala Open Zoo (also called Pinnawala Zoo) is a zoological garden in Pinnawala, Sri Lanka, which is situated closer to the Pinnawala Elephant Orphanage. The zoo was opened for public on 17 April 2015. This is the first open-air zoo in Sri Lanka and second zoo in Sri Lanka after Dehiwala zoo.The zoo is divided into two sections: the Sri Lankan zone and the World zone. Currently, the zoo is home for many native animals such as chital, lion, Sri Lanka Leopard, Purple-faced leaf monkey, Wild boar and many more.'),
    Place(
        name: "Bathalegala (Bible Rock)",
        subtitle: 'See more...',
        image: "assets/images/Bathalegala.webp",
        description:
            'Bible rock / Punchi Sigiriya / Bathalegala is a mountain range with a height of 2780 feet above sea level, located in Kegalle Aranayaka area. It is popular among tourists due to its easy climbing and natural beauty of the ecosystem. When you reach the top, you will be able to see a large area spread over Uthuankanda, Alagalla, Urakanda, Ambuluawa, Samasara Kanda as well as Kegalle, Mawanella, Gampala, Kadugannawa areas. Bathalegala is a suitable place for night camping ,and it is customary to get permission from the temple.'),
  ];

  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' 'KEGALLE CITY',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 2, 51, 76),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/ke.webp'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView.builder(
            itemCount: places.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PlaceDetailPage(place: places[index]),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 127, 180, 237)
                        .withOpacity(0.8),
                    borderRadius: BorderRadius.circular(180),
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  PlaceDetailPage(place: places[index]),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage(places[index].image),
                          radius: 24, // Adjust the radius of the CircleAvatar
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            places[index].name,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            places[index].subtitle,
                            style: const TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 20, 46, 162)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
class Place {
  final String name;
  final String subtitle;
  final String image;
  // ignore: prefer_typing_uninitialized_variables
  final description;

  Place({required this.name, required this.subtitle, required this.image,required this.description});
}

class PlaceDetailPage extends StatelessWidget {
  final Place place;

  const PlaceDetailPage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(place.name),
    ),
    body: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(place.image),
            ),
            const SizedBox(height: 20),
            Text(
              place.name,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            Text(
              place.description,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
  }
}