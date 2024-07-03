import 'package:flutter/material.dart';


class Jaffna extends StatelessWidget {
  Jaffna({Key? key, required image, required String text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: 'Sangilean Thoopu',
        subtitle: 'See more...',
        image: 'assets/images/Sangilean Thoopu.jpg',
        description:
            "This is undoubtedly one of the most essential places to see in Jaffna. If you want to understand Jaffna's history, you cannot ignore the existence of this Royal Palace. The old bathing pool and the remnants of the royal palace are still visible in the Nellore District. You should surely add this location among the top things to visit in Jaffna. This place commemorates the last Tamil King who successfully controlled the Yarlpana Kingdom. After viewing the Nallur Temple, you can go immediately here. To get to this location from Jaffna, there are numerous private and public transportation options available."),
    Place(
        name: 'Jaffna Library',
        subtitle: 'See more...',
        image: 'assets/images/Public_Library,_Jaffna.jpg',
        description:
            "Jaffna Library is regarded as one of the most historical and essential locations to visit in Jaffna. This library opened in 1959. It was established by Alfred Duraiappah, the Mayor of Jaffna at the time. This library's structure was akin to the Indo-Saracenic style. This library suffered a tragedy when it was burned down during the Jaffna civil war in 1981. At the time, this library was considered Asia's largest. It had about 97000 books and manuscripts."),
    Place(
        name: 'Nallur Temple',
        subtitle: 'See more...',
        image: 'assets/images/Nallur.jpg',
        description:
            "Pilgrims from all around the world visit Nallur Temple. The golden arch and expanded Gopuram are the most prominent features of this Nallur Temple. People come here mainly to explore the Gopuram. The foundation of this temple was created in the seventeenth century. The Portuguese destroyed the original structure of this edifice, which had been built during the reign of the Tamil Kings, in 1620. This temple is currently regarded the major location for any form of religious festival."),
    Place(
        name: 'Nainatheevu',
        subtitle: 'See more...',
        image: 'assets/images/Nainatheevu.jpg',
        description:
            "This popular tourist destination is well-known for its boat services. You will undoubtedly like the boat ride and visit the island. This island is around two to three hours away from the city of Jaffna. The amount of time needed to visit is determined by the availability of boats to get there. Following the Goddess Amba Devi's blessings, a wealthy foreign trader erected the main temple here. Unfortunately, the Portuguese destroyed this temple, which was reconstructed in the 18th century. The genuine Gopuram was added in 1933."),
    Place(
        name: 'Jaffna Fort',
        subtitle: 'See more...',
        image: 'assets/images/Jaffna Fort.jpg',
        description:
            "Jaffna Fort is one of the most popular tourist attractions in Jaffna, Sri Lanka. This fort was built in 1618 by persons of Portuguese descent during the Portuguese conquest of Jaffna. This fortress is located near the city of Karaiyur. This fort is also known as the Fortress of Our Lady of Miracles of Jaffna. The Dutch invaders took this fort in 1658, and the British reclaimed it in 1795. From 1986 to 1995, the LTTE held this fort, which was regained by the Sri Lanka Army in 1995."),
    Place(
        name: 'Kandarodei Temple',
        subtitle: 'See more...',
        image: 'assets/images/Kandarodei Temple.jpg',
        description:
            "This is another fantastic spot that should be on your list of must-sees in Jaffna. This is an old Buddhist site in Jaffna that is famous for its historical significance. This temple is located near Chunnakam and about 8 km from Jaffna Town. The property is one-acre in size, and the entire construction is painted in ash stone. There are 61 dagobas, some of which just have their foundations. This temple was founded during the Anuradhapura Era, and stone scriptures still exist, demonstrating the temple's rich historical history."),
    Place(
        name: 'Keerinalain Naguleeswaram ',
        subtitle: 'See more...',
        image: 'assets/images/Keerinalain or Naguleeswaram Temple.jpg',
        description:
            "Keerinalain rates among the top ten locations to see in Jaffna, and its temple is must-see. Travelers from all over the world come here to take a soak in the natural water spring. It is said that taking a bath here cures all illnesses and diseases. Many Hindu pilgrims visit this temple to seek blessings. This location is 15 kilometers outside town and is ideal for taking a warm bath and rejuvenating your soul. People with religious beliefs will find calm at this location."),
    Place(
        name: 'Casuarina Beach',
        subtitle: 'See more...',
        image: 'assets/images/Casuarina Beach.jpg',
        description:
            "Casuarina Beach, located in Karainagar, Jaffna District, Sri Lanka, is one of the most popular tourist attractions on the Jaffna Peninsula. You must drive about 20 km from Jaffna to reach this beach, which is also known as Casuarina. The beach's greatest attraction is its white sand. This beach is named for the Casoorina trees that may be seen throughout it. If you want to walk around the entire beach, it will take 45 minutes to go to one of the most popular sites to visit in Jaffna district."),
    Place(
        name: 'Dambakola Patuna ',
        subtitle: 'See more...',
        image: 'assets/images/Dambakola Patuna.jpg',
        description:
            "If you are a history fan, Dambakola Patuna is the ideal spot to visit when in Sri Lanka. This location has a rich history dating back 2000 years and served as Sri Lanka's ancient harbor. Sanghamitta, King Ashoka's daughter, came to this harbor to promote Buddhism. She carried the holy sapling of the Bodhi tree erected by Sri Lankan King Devanampiyatissa. This tree is currently regarded as the world's oldest human-planted tree."),
    Place(
        name: 'Charty beach ',
        subtitle: 'See more...',
        image: 'assets/images/Charty beach.jpg',
        description:
            "The white sandy beach known as 'Charty Beach' is about 15 kilometers from the city of Jaffna. It is a charming little location away from the bustle and crowds that can be found at more popular beaches in Sri Lanka. Because of the Civil War, the beach remained largely unspoiled until it was over. Many resorts are now located nearby, making it an ideal secluded beach vacation destination."),
  ];

  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' JAFFNA CITY',
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
                image: AssetImage('assets/images/jaff.jpg'),
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
