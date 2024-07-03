import 'package:flutter/material.dart';


class Matale extends StatelessWidget {
  Matale({Key? key, required image, required String text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: 'Sembuwatta Lake',
        subtitle: 'See more...',
        image: 'assets/images/vsembu.jpeg',
        description:
            'Tucked away amidst lush greenery and rolling hills, Sembuwatta Lake is a serene escape offering breathtaking scenery and tranquil vibes. Visitors can enjoy a refreshing swim in the crystalline waters or opt for a leisurely boat ride while soaking in the natural beauty of the surroundings.'),
    Place(
        name: 'Nalanda Gedige',
        subtitle: 'See more...',
        image: 'assets/images/vnalanda.jpeg',
        description:
            'This ancient structure remains a lesser-known treasure in Matale. Nalanda Gedige is an intriguing blend of Hindu and Buddhist architectural styles, showcasing the rich cultural heritage of Sri Lanka. Surrounded by picturesque landscapes, it offers a peaceful atmosphere for exploration and contemplation.'),
    Place(
        name: 'Aluvihara Rock Cave Temple',
        subtitle: 'See more...',
        image: 'assets/images/valu.jpeg',
        description:
            "Steeped in history and spirituality, the Aluvihara Rock Cave Temple is a hidden marvel nestled amidst rugged terrain. Carved into the rocky landscape, this sacred site boasts intricate cave paintings and ancient inscriptions, providing insight into Sri Lanka's religious heritage and cultural legacy."),
    Place(
        name: 'Riverston Peak',
        subtitle: 'See more...',
        image: 'assets/images/vriver.jpeg',
        description:
            'For the adventurous souls seeking panoramic views and thrilling hikes, Riverston Peak is a hidden gem worth discovering. Trekking through verdant forests and rocky terrain, visitors can ascend to the summit and be rewarded with sweeping vistas of mist-covered mountains and cascading waterfalls.'),
    Place(
        name: 'Pidurangala Rock',
        subtitle: 'See more...',
        image: 'assets/images/vpidu.webp',
        description:
            'While neighboring Sigiriya may steal the spotlight, Pidurangala Rock offers a quieter alternative with equally spectacular views. This lesser-known gem boasts a challenging yet rewarding hike to its summit, where travelers can marvel at stunning sunrise or sunset vistas overlooking the majestic landscapes of Matale.'),
    Place(
        name: 'Knuckles Mountain Range',
        subtitle: 'See more...',
        image: 'assets/images/vknuckles.jpeg',
        description:
            "The Knuckles Mountain Range, located in central Sri Lanka, is a major eco-tourism spot and a UNESCO World Heritage Site. Named after the knuckles of a clenched fist, it spans 155 square kilometers and is home to over 40 rural villages. The range is rich in biodiversity and offers stunning vistas, cascading waterfalls, streams, and a variety of flora and fauna. The unpredictable climate and diverse flora and fauna make it a popular hiker's haven."),
    Place(
        name: 'Meemure',
        subtitle: 'See more...',
        image: 'assets/images/vmeemure.jpeg',
        description:
            "The ancient village of Meemure Village is situated in Sri Lanka's Knuckles Mountain Range. However, in the contemporary world, it is a remote village. It is not easily accessible. The location is well-known among domestic tourists visiting the nation. As a result, this community has been prioritised by many of them while choosing their holiday locations."),
    Place(
        name: 'Wasgamuwa National Park',
        subtitle: 'See more...',
        image: 'assets/images/vwas.jpeg',
        description:
            'Wasgamuwa National Park, located in Matale/Polonnaruwa district, spans 36,900 hectares and is accessible from Colombo via Ambepussa, Kurunegala, Kandy, and other tourist destinations. Elevated in 1984, it aims to provide a safe refuge for wildlife displaced by the Mahaweli Development Project.'),
  ];
  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' MATALE CITY',
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
                image: AssetImage('assets/images/vmatale.jpeg'),
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
                    color: const Color.fromARGB(255, 168, 184, 191)
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
