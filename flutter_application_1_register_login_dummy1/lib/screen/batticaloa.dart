import 'package:flutter/material.dart';

class Batticaloa extends StatelessWidget {
  Batticaloa({Key? key, required image, required text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: 'Pigeon Island National Park',
        subtitle: 'See more...',
        image: 'assets/images/vpigeon.jpeg',
        description:
            'Nestled off the coast of Batticaloa, this marine sanctuary boasts pristine beaches, vibrant coral reefs, and diverse marine life. Snorkelers and scuba divers will revel in the opportunity to explore its crystal-clear waters, home to exotic fish species and colorful coral formations.'),
    Place(
        name: 'Kalladi Bridge',
        subtitle: 'See more...',
        image: 'assets/images/vkalladi.jpeg',
        description:
            "An architectural marvel spanning the Batticaloa Lagoon, Kallady Bridge offers breathtaking views of the surrounding landscape. Visitors can stroll along its length, immersing themselves in the tranquil ambiance while admiring the lagoon's serene waters and the occasional traditional fishing boat passing beneath."),
    Place(
        name: "Thoppigala (Baron's Cap)",
        subtitle: 'See more...',
        image: 'assets/images/vthoppigala.jpeg',
        description:
            "For adventurers craving a challenge, Thoppigala, also known as Baron's Cap, presents an exhilarating hiking experience. This rugged terrain is steeped in history, with remnants of ancient civilizations and lush greenery adorning its slopes. Trekking to the summit rewards hikers with panoramic vistas of the Eastern Province's lush forests and distant mountain ranges."),
    Place(
        name: 'Kalkudah Beach',
        subtitle: 'See more...',
        image: 'assets/images/vkal.jpeg',
        description:
            'Tucked away from the bustling tourist hubs, Kalkudah Beach offers seclusion and serenity. Its powdery white sands and calm azure waters provide the perfect setting for relaxation and rejuvenation. Whether lounging under the shade of swaying palms or partaking in water sports like kayaking and windsurfing, visitors will find solace in this coastal haven.'),
    Place(
        name: 'Batticaloa Fort',
        subtitle: 'See more...',
        image: 'assets/images/vfort.jpeg',
        description:
            "Steeped in history, Batticaloa Fort stands as a testament to the region's colonial past. Constructed by the Portuguese in the 17th century and later fortified by the Dutch and British, this architectural marvel showcases a blend of European and South Asian influences. Exploring its ramparts, bastions, and ancient cannons offers a glimpse into Batticaloa's storied heritage"),
  ];
  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' BATTICALOA CITY',
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
                image: AssetImage('assets/images/vbatti.jpeg'),
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
                    color: const Color.fromARGB(255, 125, 151, 163)
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
