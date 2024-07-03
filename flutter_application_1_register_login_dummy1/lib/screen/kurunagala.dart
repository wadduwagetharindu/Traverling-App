import 'package:flutter/material.dart';


class Kurunagala extends StatelessWidget {
  Kurunagala({Key? key, required image, required String text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: 'Yapahuwa rock fotress',
        subtitle: 'See more...',
        image: 'assets/images/vyapahuwa.jpeg',
        description:
            "Yapahuwa, Sri Lanka's Wayamba province, is home to the Rock Fortress Complex, a remarkable ancient ruin and one of the best archeological sites in the country, rumored to be more significant than Sigiriya.Yapahuwa, the capital of the 13th century, housed the Sacred Tooth Relic of the Buddha for 11 years. King Bhuvanekabhu, I built a palace and temple to protect the country, which remains a monastery today"),
    Place(
        name: 'Yakdessagala',
        subtitle: 'See more...',
        image: 'assets/images/vyak.jpeg',
        description:
            'Yakdessagala, also known as Kuvenigala, is a mountain in Sri Lanka where Kuveni cursed King Vijaya and died due to rejection over an Indian princess. The mountain is a popular hiking spot, suitable for experienced hikers with the necessary strength and stamina.'),
    Place(
        name: 'Badagamuwa Conservation\n' 'Forest',
        subtitle: 'See more...',
        image: 'assets/images/vbadagamuwa.jpeg',
        description:
            'Badagamuwa, a natural forest in Sri Lanka, degraded due to human activities in the 17th century. In 1894, it was declared a "Conservation Forest" and reforestation began in 1895. Currently home to over 130 plant and 300 animal species, it experiences annual rainfall of 1750-2500 mm.'),
    Place(
        name: 'Panduwasnuwara kingdom',
        subtitle: 'See more...',
        image: 'assets/images/vpandu.webp',
        description:
            "Panduwasnuwara city, located in Kurunegala, was the capital of Sri Lanka during King Pandukabhaya's reign. It held a tooth relic, a symbol of kingship, which was stolen by South Indian invaders. The city's ruins span 20 hectares and are known for the stories of Unmada Chithra and Deegha Gamini."),
    Place(
        name: 'Ridi Viharaya',
        subtitle: 'See more...',
        image: 'assets/images/vridi.jpeg',
        description:
            'Ridi Vihara, a significant Raja Maha Vihara in the Cultural Triangle, is documented in Brahmin Inscriptions dating back to the 2nd and 3rd centuries BC. It is believed to have housed many Arahaths during the time of Arahath Mahinda. The temple was built by King Dutugemunu, with construction details known from historical chronicles and legends.'),
    Place(
        name: 'Wadakada ella falls',
        subtitle: 'See more...',
        image: 'assets/images/vwadakada.jpeg',
        description:
            "Wadakada Falls, a 6m artificial waterfall in Sri Lanka, is formed by perennial streams from Ginnerriya, Endagalla, and Udapola, flowing between the Paraigala and Handugala Mountains. t stands at a height of 6 meters and is one of Sri Lanka’s artificial falls. "),
    Place(
        name: 'Paangala',
        subtitle: 'See more...',
        image: 'assets/images/vpaangala.jpeg',
        description:
            'Explore Kurunegala, Mawathagama town, and Bathalagoda Lake on a scenic bike or three-wheeler journey, ensuring sufficient fuel for a challenging journey through deserted roads.'),
    Place(
        name: 'Athugala Rock Temple',
        subtitle: 'See more...',
        image: 'assets/images/vathugala.jpeg',
        description:
            "Athugala Rock Temple, 325 meters high, is named after an elephant-like stone. Locals believe it formed from animals' inability to withstand harsh dryness. The summit features a temple and a giant Samadhi Buddha statue, attracting people from various faiths.The Samadhi Buddha statue overlooks Kurunegala, and a temple on the cliff top attracts people of various faiths. Hiking to the mountain's top is more rewarding than using a car, and is preferred by both young and old individuals.'"),
    Place(
        name: 'Lake Round kurunegala',
        subtitle: 'See more...',
        image: 'assets/images/vlake.jpeg',
        description:
            'Located in North Western Sri Lanka, Kurunegala Lake is adjacent to Kurunegala North. Kurunegala Lake stretches 3.68 kilometres in length. It is also referred to as Kurunegala Tank or Rantalia Lake. This lovely body of water is located on the edge of the main city, far from the bustle of the metropolis.'),
    Place(
        name: 'Aandagala',
        subtitle: 'See more...',
        image: 'assets/images/vaandagala.jpeg',
        description:
            "Around the rock, you enjoy a pleasant view of Kurunegala. more than a km long and ten metres wide. For children, climbing is not safer.The name Aanda Gala translates to 'Eel shaped rocked,'' indicating that the extremely long rock resembles an eel."),
  ];
  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' KURUNEGALA CITY',
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
                image: AssetImage('assets/images/vkuru.jpeg'),
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
                    color: const Color.fromARGB(255, 242, 225, 125)
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
