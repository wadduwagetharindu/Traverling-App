import 'package:flutter/material.dart';

class Kandy extends StatelessWidget {
   Kandy({Key? key, required image, required text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: 'The Temple of the Tooth Relic',
        subtitle: 'See more...',
        image: 'assets/images/The Temple of the Tooth Relic.jpg', 
        description: 'The Temple of the Tooth Relic (Sri Dalada Maligawa) in Kandy, Sri Lanka, is a revered Buddhist shrine that draws travelers from around the world. This UNESCO World Heritage Site houses the sacred relic of the tooth of the Buddha, making it one of the holiest places in Buddhism. Visitors can marvel at the temples magnificent architecture, adorned with intricate carvings and golden embellishments. The temple complex also includes shrines, museums, and a tranquil garden. Witnessing the daily rituals and rituals performed by the temples monks offers a deeply spiritual experience, while the annual Esala Perahera festival showcases vibrant processions and cultural performances.'),
    Place(
        name: 'The Royal Botanical Gardens',
        subtitle: 'See more...',
        image: 'assets/images/The Royal Botanical Gardens.webp',
        description: 'The Royal Botanical Gardens in Peradeniya, near Kandy, Sri Lanka, beckon travelers with their lush greenery and stunning botanical diversity. Spanning over 147 acres, this expansive garden showcases a remarkable collection of exotic plants, trees, and flowers from around the world. Visitors can wander through themed gardens, including the Orchid House and Spice Garden, and marvel at rare specimens. Highlights include the Giant Javan Fig Tree, the Cannonball Tree, and the Bamboo Grove. The tranquil atmosphere, scenic pathways, and picturesque river add to the gardens allure, making it a must-visit destination for nature lovers and botany enthusiasts alike.'),
    Place(
        name: 'Kandy Lake',
        subtitle: 'See more...',
        image: 'assets/images/Kandy Lake.jpg',
        description: 'Kandy Lake, also known as Bogambara Lake, enchants travelers with its serene beauty in the heart of Kandy, Sri Lanka. Created in the 19th century by the last king of Kandy, this picturesque artificial lake offers a peaceful retreat amidst bustling city life. Visitors can stroll along the scenic promenade, enjoying views of the surrounding hills and the Temple of the Tooth Relic reflected in the calm waters. Boating is available for those seeking a leisurely ride on the lake. Sunset casts a magical glow over the lake, creating a romantic ambiance for couples and a tranquil setting for relaxation.'),
    Place(
        name: 'The Knuckles Mountain Range',
        subtitle: 'See more...',
        image: 'assets/images/The Knuckles Mountain Range.jpg',
        description:'The Knuckles Mountain Range in Sri Lankas Central Province captivates travelers with its breathtaking landscapes and diverse ecosystems. Designated a UNESCO World Heritage Site, this rugged mountain range offers an array of outdoor adventures for nature enthusiasts and thrill-seekers alike. Hiking trails wind through misty forests, past cascading waterfalls, and panoramic viewpoints offering stunning vistas of valleys and peaks. Wildlife abounds, with rare species such as the elusive Sri Lankan leopard and endemic bird species. Camping, trekking, and birdwatching opportunities abound, providing a truly immersive experience in one of Sri Lankas most pristine natural environments.'),
    Place(
        name: 'Horton Plains National Park',
        subtitle: 'See more...',
        image: 'assets/images/Horton Plains National Park.jpg',
        description:'Horton Plains National Park, located in Sri Lankas Central Province, offers travelers a captivating journey through diverse landscapes and unique ecosystems. Designated as a UNESCO World Heritage Site, this pristine wilderness boasts rolling grasslands, dense montane forests, and dramatic cliffs. The park is home to endemic species such as the Sri Lankan sambar deer and purple-faced langur monkey, as well as numerous bird species. The highlight for many visitors is the iconic Worlds End viewpoint, offering panoramic views of misty valleys and tea plantations below. Hiking trails lead to scenic waterfalls and the enchanting Bakers Falls, providing unforgettable experiences in nature.'),
    Place(
        name: 'Hanthana Mountain',
        subtitle: 'See more...',
        image: 'assets/images/hanthana.jpg',
        description:'The Hanthana Mountain Range is located in the central province of Sri Lanka. It consists of seven peaks. The height of the highest peak in the range is 3800 ft. The highest peak is named as “Uura Kanda”. Hanthana is a favorite travel spot for many people because it is exciting and thrilling to explore. You can reach the foot of the mountain range by the Peradeniya-Galaha road or the Kandy-Udawela road. The mountain range, which is most often hidden by mist, is a favorite place by local university students who address the peak by the name Adara Kanda (mountain of love). Since the Peradeniya university is close by, all year around university students make it a point to visit this mountain range.'),
    Place(
        name: 'Kandy View Point',
        subtitle: 'See more...',
        image: 'assets/images/Kandy view point.jpg',
        description:'Kandy Viewpoint is one of those exceptional spots that offers a panoramic embrace of the historic city of Kandy, Sri Lanka. Nestled up in the hills, this vantage point gives visitors the chance to soak in sweeping views of the entire city, the serene Kandy Lake, and the surrounding misty mountain range that hugs the city in a picturesque backdrop. For those who seek the perfect snapshot or a moment to take in the beauty of Kandy from above, this is the spot where we locals love to come and bask in the city’s scenic glory, just as the sun dips below the horizon or when the city lights begin to illuminate the evening.'),
    Place(
        name: 'Bellwood Hills',
        subtitle: 'See more...',
        image: 'assets/images/Bellwood.webp',
        description:'Bellwood Hills is a luxury residential development located in Kandy, Sri Lanka. Situated amidst the picturesque hills of Kandy, Bellwood Hills offers residents a serene and tranquil living environment surrounded by lush greenery and breathtaking views.The development is known for its high-end amenities and modern architectural design, catering to the discerning tastes of homeowners looking for luxury living. From spacious villas to elegant apartments, Bellwood Hills offers a range of housing options to suit different preferences and lifestyles. In addition to its luxurious residences, Bellwood Hills also boasts well-maintained landscaping, recreational facilities, and security features, ensuring residents can enjoy a comfortable and safe living experience.'),
    Place(
        name: 'The Ambakke Temple',
        subtitle: 'See more...',
        image: 'assets/images/Ambakke.jpg',
        description:'The Ambakke Temple, which is famous for its old Sinhalese wood carvings found in Sri Lanka, is located in Udunuwara Mada Province of Kandy District. There is an intersection called Daulagala on the highway from Peradeniya to Ambilmeegama. This temple is built in the middle of a village with a field which is found after about half a mile on the road leading from there to Gangaha.The historical legend regarding the construction of this temple is well explained in the poetic work "Ambakke Varnanava". A famous story is believed to have led to the construction of the Ambakke temple. A drummer living in the village of Rangama was cured of leprosy after he went to Kataragama and prayed. So he went there every year and beat the drums and gave thanks to the Kandasuridans.'),
    Place(
        name: 'Nelligala RajaMaha Viaharaya',
        subtitle: 'See more...',
        image: 'assets/images/nelligala.jpg',
        description:'Nelligala International Buddhist Center is a Buddhist temple situated in Muruthalawa village in the Kandy district. Situated on top of a mountain, it is a popular place for sightseeing visitors and tourists due to its sheer beauty and amazing view of the surrounding landscape. It is a modern temple with its construction being commenced in 2015.The Nelligala International Buddhist Center is a popular site visited by both Buddhists and people from various other religions. It is a place which brings along peace and tranquility to its visitors. The gold color Buddha statues of the temple creates a unique and picturesque sight to see in contrast with the blue sky above. The temple includes sacred relics of Lord Buddha. The Nelligala International Buddhist Center is a short drive from the Kandy city and consists of many facilities such as wheelchair access in order to help pilgrims to reach the top comfortably.'),
];
  
  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' Kandy CITY',
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
                image: AssetImage('assets/images/kan1.webp'),
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
