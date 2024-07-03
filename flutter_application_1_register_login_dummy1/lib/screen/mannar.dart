import 'package:flutter/material.dart';

class Mannar extends StatelessWidget {
  Mannar({Key? key, required image, required String text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: 'Shrine of our Lady of Madhu',
        subtitle: 'See more...',
        image: 'assets/images/Shrine of our Lady of Madhu.jpg',
        description:
            'The Shrine of Our Lady of Madhu is a famous landmark in the Northern Province of Sri Lanka in Mannar. This Roman Catholic Marian shrine welcomes the Christians since it was built four centuries ago. Many Sri Lankan Catholics and those from the remaining parts of the world keep flocking in this shrine to worship for salvation. As the pilgrimage center is considered the holiest of all catholic shrines in Sri Lanka, it witnesses ample rush throughout the year. Visitors include Tamil and Sinhalese Catholics besides a large chunk of Buddhists, Hindus and Protestants who arrive here to spend quality time.'),
    Place(
        name: 'Mannar island',
        subtitle: 'See more...',
        image: 'assets/images/Mannar island.jpg',
        description:
            'Mannar Island is a natural bounty in Sri Lanka. A causeway connects the island to the Sri Lankan mainland. It is around 50 square kilometers in size and is covered in sand and plants. Tourists often visit attractive places such as Adam’s Bridge limestone shoals chains, which connect Mannar, Sri Lanka, with Tamil Nadus Pamban Island, commonly known as Rameswaram Island. Geographical research indicate that it was once a bridge that connected India and Sri Lanka centuries ago. Travelers enjoy seeing the ruins of decaying colonial edifices established by Portuguese, Dutch, and British monarchs several centuries ago '),
    Place(
        name: 'The Doric at Arippu',
        subtitle: 'See more...',
        image: 'assets/images/The Doric at Arippu.jpg',
        description:
            'This known as Doric Bungalow or simply The Doric, this structure on the eastern Arippu in Mannar, Sri Lanka, served as the official residence of the 1st Ceylon Governor, Frederick North, during the colonial era. It also became one of the most famous tourist destinations in Mannar, Sri Lanka, following the country’s freedom from colonial authorities. A large number of visitors come here to learn about colonial rule and the British Empire’s invasion of Sri Lanka. The architectural features and grandeur of this monument in the ancient Greek Doric Order style captive all visitors. The structure took three years (from 1801 to 1804) to complete.'),
    Place(
        name: 'Baobab tree',
        subtitle: 'See more...',
        image: 'assets/images/Baobab tree.webp',
        description:
            'Mannar island is typically frequented by tourists who wish to see a truly unique attraction, the famed Baobab Tree. The presence of an ancient baobab tree enchants visitors who come to see its beauty. Researchers believe a few Arab tradesmen planted the tree over seven centuries ago. With a girth about 20 meters, this tree is around 700 years old and remains a prominent icon in this area.'),
    Place(
        name: 'Mannar fort',
        subtitle: 'See more...',
        image: 'assets/images/Mannar fort.jpg',
        description:
            'Visitors to Sri Lanka’s Mannar Fort might discover a significant historical landmark. This fort also known as Mark Kai in Tamil and Mannaram Balakotuwa in Sinhalese, is an important landmark on Mannar Island. It was built by the Portuguese during their control around 1560. The Dutch rulers took it and began reconstructing it in 1658, finishing in 1696.While the Dutch surrendered to the British in 1795, this fort came under their control. This unusually designed, square-shaped fort entices all travelers to see the four bastions and architectural grandeur of its site, which connects mainland Sri Lanka to Mannar Island by a bridge.'),
    Place(
        name: 'Yoda Wewa',
        subtitle: 'See more...',
        image: 'assets/images/Yoda Wewa.jpg',
        description:
            'A Giant’s Tank or Yoda Wewa near Mannar, Sri Lanka, is also known as Kaukkarai Kuam in Sinhalese. It is a well-known northern Sri Lankan Irrigation tank, located only 16km from Mannar. It has also become a renowned tourist destination today. It has existed for many centuries and is a renowned landmark in the region. People from all around Sri Lanka, particularly tourists, arrange trips to Giant’s Tank since it is conveniently accessible via roads and trains. They appreciate spending quality time at this site.'),
    Place(
        name: 'Adam’s bridge',
        subtitle: 'See more...',
        image: 'assets/images/Aadams-bridge.jpg',
        description:
            'Adam’s bridge, an iconic monument with mythological significance, is also known as Rama’s Bridge and Rama Setu. A symbolically significant bridge connects Sri Lanka’s Mannar island to neighboring India’s Pamban island, also known as Rameshwaram island, which is located far from the southern state of Tamil Nadu mainland. It’s a limestone shoals chain.Geologists suggest that several millennia ago, it served as a land bridge connecting the two countries. The ancient Indian Sanskrit epic Ramayana, penned by Valmiki, mentions this bridge, hence Hindu theology holds it in high regard. It remains a prominent attraction in Sri Lanka to this day.'),
    Place(
        name: 'Thiruketheeswaram kovil',
        subtitle: 'See more...',
        image: 'assets/images/Thiruketheeswaram kovil.jpg',
        description:
            'Thirukethesswaram Kovil Hindu shrine, commonly known as Ketheeswaram Temple or Tirukktsvaram in Sri Lanka. One of the oldest Hindu temples in the Mannar district, it is frequently visited by Hindu devotees. It looks out over neighboring India’s ancient Tamil port towns of Manthai and Kudiramalai.Despite being in ruins and having been restored and refurbished numerous times throughout the years, this temple is still frequented by Shiva devotees. Because of its ancient significance, this temple is equally frequented by explorers, Hindu devotees, and ordinary travelers. This is undoubtedly one of the best sited to see in Mannar.'),
    Place(
        name: 'Mannar bird sanctuary',
        subtitle: 'See more...',
        image: 'assets/images/Mannar bird sanctuary.jpg',
        description:
            'This bird sanctuary is a blessing I disguise for environment and wildlife enthusiasts, providing opportunities to observe a diverse range of migratory and local species. It is a popular Nature Reservoir in Mannar that provides plenty of opportunities to spend quality time watching a variety of bird species, mammals, and many other animals.Popular animals found here include Deccan avi faunal species, Crab Plovers, Long-tailed Shrikes, Black Drongos and Indian Coursers. Tourists can see a variety of wildlife creatures, particularly in the Thalladi Pond to Periyar Kalapuwa, Mannar Causeway, and other places near the Adams Bridge.'),
  ];

  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' MANNAR CITY',
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
                image: AssetImage('assets/images/mann.jpg'),
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
