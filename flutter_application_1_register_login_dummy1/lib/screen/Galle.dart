// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Galle extends StatelessWidget {
   Galle({Key? key, required image, required text}) : super(key: key);




    final List<Place> places = [
    Place(
        name: 'Galle Fort',
        subtitle: 'See more...',
        image: 'assets/images/Galle Fort.webp', 
        description: 'A UNESCO World Heritage Site, Galle Fort in Sri Lanka is a historical, archaeological, and architectural heritage monument. Built by the Portuguese in the 16th century and fortified by the Dutch in the 17th century, this well-preserved fort demonstrates a blend of European architectural styles and South Asian traditions. The forts robust walls enclose a living, thriving community with museums, churches, boutique shops, and cafes. Walking its narrow streets feels like stepping back in time, offering picturesque views of the Indian Ocean and an insight into the colonial history of this strategic port city.'),
    Place(
        name: 'Dutch Reformed Church',
        subtitle: 'See more...',
        image: 'assets/images/Dutch Reformed church.jpg',
        description: 'Also known as Groote Kerk, the Dutch Reformed Church in Galle is a significant landmark within the Galle Fort. Built in 1755, it showcases Dutch colonial architecture with its gabled roof, thick walls, and a floor paved with gravestones from the old Dutch cemetery. The churchs interior holds a beautifully carved pulpit, organ, and an impressive array of antique memorial plaques, offering a window into the lives of the early European settlers. The church is still active today, holding services and maintaining its historical significance as a testament to the enduring Dutch influence in Sri Lanka.'),
    Place(
        name: 'Hikkaduwa',
        subtitle: 'See more...',
        image: 'assets/images/Hikkaduwa Beach.jpg',
        description: 'Renowned for its vibrant coral reefs and surf-worthy waves, Hikkaduwa Beach is a paradise for snorkelers, divers, and surfers alike. This lively coastal destination, located on the southwest coast of Sri Lanka, offers crystal clear waters and a bustling beachfront filled with restaurants, cafes, and souvenir shops. Hikkaduwas coral sanctuary, home to a diverse marine ecosystem, is easily accessible, making it a perfect spot for underwater exploration. Beyond its aquatic allure, Hikkaduwa hosts vibrant beach parties and cultural events, capturing the essence of Sri Lankas coastal charm.'),
    Place(
        name: 'Jungle Beach',
        subtitle: 'See more...',
        image: 'assets/images/Jungle Beach.jpg',
        description:'Tucked away near Unawatuna, Jungle Beach is a secluded haven accessible via a short trek through the jungle, offering a more tranquil alternative to the areas busier beaches. This small but beautiful beach is framed by lush greenery, giving it a private, hidden away feel. Its calm, clear waters are ideal for swimming and snorkeling, with a rich marine life visible near the shore. The beach has a few facilities, including a restaurant, ensuring a comfortable day out. Jungle Beach is a perfect escape for those seeking peace, natural beauty, and a touch of adventure.',),
    Place(
        name: 'Mirissa',
        subtitle: 'See more...',
        image: 'assets/images/Mirissa Beach.jpg',
        description:'Mirissa, located on the southern coast of Sri Lanka, is famed for its idyllic beauty, making it a must-visit destination for beach lovers. The crescent-shaped beach offers golden sands, serene blue waters, and a relaxed atmosphere. Renowned for whale and dolphin watching, Mirissa provides a unique opportunity to witness these majestic creatures in their natural habitat. The beach is also popular for its vibrant nightlife, with plenty of beach bars and restaurants serving fresh seafood. Mirissa Beach strikes a perfect balance between natural beauty and lively beach culture, offering something for every type of traveler.'),
    Place(
        name: 'Turtle Hatchery',
        subtitle: 'See more...',
        image: 'assets/images/Sea Turtle Hatchery Mahamodara.jpg',
        description:'The Sea Turtle Hatchery in Mahamodara is a conservation project dedicated to the protection of sea turtles in Sri Lanka. Visitors can learn about the efforts to rescue, rehabilitate, and release injured or endangered turtles back into the ocean. The hatchery offers a unique opportunity to see various species of turtles, including the endangered Hawksbill and Green Turtles, and to understand the hatcherys role in preserving these magnificent creatures. Educational and inspiring, a visit here highlights the importance of wildlife conservation and offers a chance to contribute to the wellbeing of sea turtles.'),
    Place(
        name: 'Sri Sudharmalaya Temple',
        subtitle: 'See more...',
        image: 'assets/images/Sri Sudharmalaya Buddhist Temple.jpg',
        description:'Located within the Galle Fort, Sri Sudharmalaya Buddhist Temple is a place of serenity and spiritual significance. The temple, with its peaceful ambiance, offers a respite from the bustle of the fort area. Visitors are greeted with intricate murals depicting the life of Buddha, along with a beautifully adorned Buddha statue. This temple serves as a center for local Buddhist community activities, including meditation and religious ceremonies. It provides insight into Sri Lankan Buddhism and its practices, making it a profound experience for those interested in spiritual exploration and cultural immersion.'),
    Place(
        name: 'Yatagala Rajamaha Viharaya',
        subtitle: 'See more...',
        image: 'assets/images/Yatagala Rajamaha Viharaya.jpg',
        description:'This ancient Buddhist temple, nestled amidst lush greenery, is a few kilometers from the coastal town of Unawatuna. Believed to be over 2300 years old, Yatagala Rajamaha Viharaya is renowned for its rock cave temple, ancient murals, and a tranquil meditation area. The temple complex offers a serene environment, with a large Buddha statue and a stupa adding to its spiritual atmosphere. The climb to the temple is rewarded with panoramic views of the surrounding countryside, making Yatagala a blend of spiritual journey and natural beauty.'),
    Place(
        name: 'Naga Viharaya',
        subtitle: 'See more...',
        image: 'assets/images/Naga Viharaya.jpg',
        description:'Situated in the heart of Galle, Naga Viharaya is a Buddhist temple known for its historical significance and architectural beauty. The temple is named after the Naga kings, believed to be protectors of the land according to local mythology. The temple architecture reflects traditional Sri Lankan design, with intricate carvings and a serene Buddha statue within. Naga Viharaya serves as a spiritual center for the local community, offering a peaceful retreat for prayer and meditation amidst the citys hustle and bustle.'),   
  ];
  
  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' Galle CITY',
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
                image: AssetImage('assets/images/Galle.jpg'),
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
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          CircleAvatar(radius: 100,
          backgroundImage: AssetImage(place.image),
          ),
          const SizedBox(height: 20,),
          Text(place.name,
          style: const TextStyle(fontSize: 20),
          ),
           Text(place.name,
          style: const TextStyle(fontSize: 24),
          ),
           const SizedBox(height: 10),
            Text(
              place.description,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),

        ],
        ) ,
        ),
        ),
      
        );
  }
}