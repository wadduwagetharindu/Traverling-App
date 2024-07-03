import 'package:flutter/material.dart';

class Matara extends StatelessWidget {
   Matara({Key? key, required image, required text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: 'Mirissa Beach',
        subtitle: 'See more...',
        image: 'assets/images/Mirissa Beach.jpg', 
        description: 'Mirissa Beach, nestled along Sri Lankas southern coast, entices travelers with its pristine sands and turquoise waters. Popular for sunbathing, swimming, and surfing, it is also renowned as a prime whale-watching destination. From December to April, visitors can embark on thrilling boat excursions to witness majestic blue whales and playful dolphins in their natural habitat. Beyond water activities, Mirissa offers vibrant beachside cafes, seafood restaurants, and laid-back bars, perfect for soaking in the relaxed coastal atmosphere. With its stunning sunsets and tropical charm, Mirissa Beach promises an unforgettable seaside escape for travelers seeking sun, sea, and serenity.'),
    Place(
        name: 'Polhena Beach',
        subtitle: 'See more...',
        image: 'assets/images/Polhena Beach.jpg',
        description: 'Polhena Beach, situated in Sri Lankas Southern Province, beckons travelers with its mesmerizing coral reefs and rich marine life. Ideal for snorkeling and diving enthusiasts, its clear waters reveal a kaleidoscope of vibrant corals and exotic fish species. Visitors can rent snorkeling gear locally and explore the underwater wonders at their own pace. Polhenas tranquil ambiance and natural beauty make it a perfect retreat for relaxation and beachside picnics. The nearby village offers charming seafood eateries, where travelers can savor freshly caught delicacies while soaking in the stunning coastal views. Polhena Beach promises an immersive marine adventure for nature lovers and beach enthusiasts alike.'),
    Place(
        name: 'Dondra Lighthouse',
        subtitle: 'See more...',
        image: 'assets/images/Dondra Lighthouse.jpg',
        description: 'Dondra Lighthouse, perched at Sri Lankas southernmost tip, offers travelers breathtaking vistas of the Indian Ocean. This historic landmark, standing tall since the 19th century, beckons visitors with its striking red-and-white striped tower. Climb its spiraling staircase for panoramic views of the rugged coastline and azure waters. Photographers relish capturing the dramatic scenery, especially during sunset. The lighthouses serene surroundings and maritime history add to its allure. Nearby, Dondra Head is a sacred pilgrimage site with a centuries-old temple dedicated to Lord Vishnu. Dondra Lighthouse promises an unforgettable experience for travelers seeking coastal beauty and cultural insights.'),
    Place(
        name: 'Star Fort',
        subtitle: 'See more...',
        image: 'assets/images/Star Fort.jpg',
        description:'Star Fort, an iconic Dutch fortress in Matara, Sri Lanka, offers travelers a glimpse into the island colonial past. Dating back to the 18th century, its distinctive star-shaped design and sturdy ramparts reflect military architecture of the era. Wander through its well-preserved grounds and imagine life within its walls centuries ago. History enthusiasts will appreciate the forts role in protecting the region from foreign invasions. Today, Star Fort serves as a picturesque backdrop for leisurely strolls and cultural events. Do not miss the opportunity to explore this historic gem and soak in its timeless charm.'),
    Place(
        name: 'Matara Fort',
        subtitle: 'See more...',
        image: 'assets/images/Matara Fort.jpg',
        description:'Matara Fort, a testament to Sri Lankas colonial heritage, captivates travelers with its rich history and architectural splendor. Constructed by the Dutch in the 17th century, this well-preserved fortress boasts sturdy ramparts, imposing gates, and historic buildings. Explore its labyrinthine corridors and imagine life within its walls centuries ago. Today, the fort serves as a cultural hub, hosting art exhibitions, festivals, and performances. Wander through its manicured gardens, visit the quaint Dutch Reformed Church, and admire panoramic views of the Indian Ocean. Matara Fort offers a fascinating journey through time for travelers seeking to uncover the island storied past.'),
];
  
  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' Matara CITY',
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
                image: AssetImage('assets/images/Matara1.webp'),
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
