import 'package:flutter/material.dart';

class Ampara extends StatelessWidget {
  Ampara({Key? key, required image, required text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: 'Okanda Beach',
        subtitle: 'See more...',
        image: 'assets/images/vokanda.jpeg',
        description:
            'Okanda beach, 28 km from Arugam Bay, offers surfing, wild elephants, and leopard encounters. It has three line-ups for experienced and intermediate surfers, but rocky cliffs pose a threat. The beaches are ideal for sunbathing and sunset surfing.Okanda-Kudumbigala region, located in Kumana National Park, is the first Heritage Conservation Zone, prioritizing traditional laws over modern ones, guided by villagers.Okanda Beach offers numerous activities for first-time travelers, including exploring the long list of major attractions.'),
    Place(
        name: 'Oluvil Beach',
        subtitle: 'See more...',
        image: 'assets/images/voluvil.jpeg',
        description:
            "Oluvil Beach, located in the 218th place out of 235 beaches in Sri Lanka, is a spacious, turquoise coastline with bright sand. Located 225.7 km from Colombo, it is suitable for various people, including lonely travelers and relaxation getaway lovers, and is not crowded during certain seasons.The beach is easily accessible within the settlement's boundaries, and can be reached by walking if your stay is nearby, using a navigator for car travel, or by public transport and taxis."),
    Place(
        name: 'Muhudu Maha Viharaya',
        subtitle: 'See more...',
        image: 'assets/images/vmuhudu.jpeg',
        description:
            "Muhudu Maha Vihara, a Buddhist temple with over 2000 years of history, is located on the sand dunes of Pottuvil. It is believed to be the location of Princess Devi, who landed after her father sacrificed her to appease gods.The Arugam Bay region's temple, surrounded by Buddha statues and kings/goddess statues, is a significant Buddhist site with buried artifacts and ruins."),
    Place(
        name: 'Kumana National Park',
        subtitle: 'See more...',
        image: 'assets/images/vkumana.jpeg',
        description:
            "Kumana National Park in southeast Sri Lanka is an eco-tourism attraction and bird sanctuary, home to numerous bird species. It features the 200-hectare 'Kumana Villu', a mangrove swamp fed by the 'Kumbukkan Oya', where water birds nest in May and June.Kumana National Park boasts a swamp with the rare black-necked stork, and is home to mammals like elephants and leopards, enhancing its birdlife."),
    Place(
        name: 'Arugam Bay Beach',
        subtitle: 'See more...',
        image: 'assets/images/varugambay.jpeg',
        description:
            'Arugam Bay in Sri Lanka is a popular surfers paradise and one of the best beaches in the country, surrounded by wildlife like monkeys, elephants, and crocodiles, making it a must-visit destination.Arugam Bay offers a blend of rural life with facilities and friendly locals. It features picturesque shorelines, surfing spots, and deserted beaches with Arugam Bay Crocodile Rock and Elephant Rock. The lagoon is home to wild elephants and crocodiles. Surf spots are safe, and early morning sunrise is a must-see.'),
    Place(
        name: 'Maruthamunai Beach',
        subtitle: 'See more...',
        image: 'assets/images/vmaruthamunai.jpeg',
        description:
            "Maruthamunai hamlet in Sri Lanka is renowned for its stunning turquoise water, enhancing beach recreation and providing a pleasant experience for visitors.Maruthamunai's beaches are mostly located near settlements, offering a lively atmosphere with amenities like cafes and bars, making them popular among locals and tourists for a fun and comfortable sun and surf experience."),
  ];
  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' AMPARA CITY',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 2, 51, 76)),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/vampara.jpeg'),
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
                    color: const Color.fromARGB(255, 177, 217, 241)
                        .withOpacity(0.8),
                    borderRadius: BorderRadius.circular(180),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(places[index].image),
                        radius: 24, // Adjust the radius of the CircleAvatar
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

  Place(
      {required this.name,
      required this.subtitle,
      required this.image,
      required this.description});
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
      body: Center(
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
            const SizedBox(height: 15),
            Text(
              place.description,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
