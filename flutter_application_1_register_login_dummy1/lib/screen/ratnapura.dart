import 'package:flutter/material.dart';

class Ratnapura extends StatelessWidget {
  Ratnapura({Key? key, required image, required String text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: "Adam's Peak",
        subtitle: 'See more...',
        image: "assets/images/Adam's Peak.jpg",
        description:
            'Adam’s Peak, also known as Sri Pada, is a sacred mountain in the heart of Sri Lanka. It is a pilgrimage site for many Buddhists, Hindus, and Christians who believe climbing the mountain brings spiritual benefits. The Peak stands at 2,243 meters tall and boasts stunning views of the surrounding landscape. This article will examine the history, significance, and logistics of climbing Adam’s Peak. Adam’s Peak has a rich history dating back to ancient times. It is believed that the footprint at the summit is that of the Buddha, and it is also considered the place where Adam first set foot on Earth after being cast out of heaven. This is why it is called Adam’s Peak. For centuries, people have been pilgrimaging the summit of Adam’s Peak to pay homage to the sacred footprint. The pilgrimage season begins in December and ends in May, coinciding with the dry season in Sri Lanka. During this time, the mountain is illuminated with colorful lights, and thousands of pilgrims flock to climb the hill.'),
    Place(
        name: 'Sri Sumana Saman Dewalaya',
        subtitle: 'See more...',
        image: 'assets/images/Sri Sumana Saman Dewalaya.jpg',
        description:
            "Sabaragamuwa Maha Saman Devale is established in a charming and beauteous area that is not further than 2.5 km from the Ratnapura-Panadura route. Its premises are spread towards the riverside of Kalu, one of the famous rivers in Sri Lanka. Temples in the name of Sumana Saman god (God Saman) was established after Polonnaruwa reign. The first temple was constructed on Adam's Peak, and, as `Sathara Devale`, four temples were gathered in four directions, namely Sabaragamuwa Maha Saman Devale from the west, Mahiyangana Saman Devale from the east, Bolthumbe Saman Devale from the south and Daraniyagala Saman Devale from the north. "),
    Place(
        name: 'Batadomba Lena Cave',
        subtitle: 'See more...',
        image: 'assets/images/Batadomba Lena Cave.jpg',
        description:
            "The Batatotalena, also known as the Diva Guhava in Buddhist literature, is a cave system in Sudagala, 8 km away from the town of Kuruwita, in the Sabaragamuwa Province of Sri Lanka. The cave measures approximately 15 m high, 18 m wide, and 25 m in length, totaling the internal cave area to 6,800 m. Accessing the cave involves a 400 m hike from Sudagala, and an additional 50 m climb to reach the cave entrance. Approximately 30 m from the cave is another partially submerged cave, which is accessible after a 20 m swim. In Buddhism, it is believed to be the cave in which the Buddha spent the day after placing his footprint on Adam's Peak, from where he supposedly proceeded to Dighavapi."),
    Place(
        name: 'Dhanaja Gemological Museum',
        subtitle: 'See more...',
        image: 'assets/images/Dhanaja Gemological Museum.jpg',
        description:
            'The only Gem museum in Ratnapura is one of the largest, most reputed and well-established business institutions selling gems and jewelry items. A vast collection of ancient Sri Lankan coins started in the 1st century, an Ola Books collection and many Antiques. All the gemstones and other mineral specimens are also found in Sri Lanka and are available at very reasonable prices. Dhanaja gemological museum is a registered museum at Ceylon Gem Cooperation and Ceylon Tourist Board.'),
    Place(
        name: 'National Museum Ratnapura',
        subtitle: 'See more...',
        image: 'assets/images/National Museum Ratnapura.jpg',
        description:
            'The National Museum of Ratnapura is one of the national museums of Sri Lanka. It is located in Ratnapura, Sri Lanka and it was opened on 13 May 1988.The museum building is called “Ehelepola Walauwa”, as it once belonged to Ehelepola Nilame, a courtier of the Kingdom of Kandy, who was the 1st Adigar (1811 - 1814) under the reign King Sri Vikrama Rajasinha, the last king of Sri Lanka, for whom he served as the Disawe (local Governor) of Ratnapura. The museum includes exhibits on prehistoric archaeological inventions, natural heritage, geological, anthropological, zoological artifacts and models relating to the Sabaragamuwa Province. The weaponry on display include Sinhala swords of the late medieval era including a sword alleged to have belonged to Ehelepola, and a collection of old guns including a Vickers machine gun used during the First World War. The cooking utensils of the region include a tripod pan with three molds for preparing rice flour cakes known as kiri roti. Traditional Kandyan jewellery includes necklaces, bangles, anklets and earrings. The grounds of the museum contain a palaeobiodiversity park, with life-sized animal sculptures of species believed to have existed in the region.'),
    Place(
        name: 'Kirindi Ella Waterfalls',
        subtitle: 'See more...',
        image: 'assets/images/Kirindi Ella Waterfalls.jpg',
        description:
            'Kirindi Ella waterfall is in Sri Lanka’s central highlands, only 6.5 km from the main junction in Pelmadulla, Colombo-Ratnapura-Batticaloa A4 main road. Kirindi Falls in the Ratnapura District of Sabaragamuwa Province is 19 km east of Ratnapura, 25 km west of Balangoda and 55 km north of Embilipitiya.The rise of Kirindi Ella waterfall is 116 meters. The cascades into a deep pool, which is called Diyagathwala.'),
    Place(
        name: 'Bopath Ella Waterfall',
        subtitle: 'See more...',
        image: 'assets/images/Bopath Ella Waterfall.jpg',
        description:
            'Bopath Ella waterfalls are located near Kuruvita town Ratnapura, one of the popular attractions & one of the most impressive waterfalls in Sri Lanka. It has a frame similar to the Sacred fig or “Bo” tree leaf, which has this title. The waterfall is a significant tourist attraction in the country. Ancient myths assume that it is haunted and hides a treasure trove. Bopath Ella waterfall is 30 meters high. Waterfalls are set from the Kuru Ganga river, which is a tributary of the Kalu Ganga river. The trail to the waterfall is filled with some shops and stalls. '),
  ];

  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' RATHNAPURA CITY',
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
                image: AssetImage('assets/images/1.jpg'),
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
