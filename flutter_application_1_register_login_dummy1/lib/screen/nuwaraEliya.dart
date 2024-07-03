// ignore_for_file: file_names
import 'package:flutter/material.dart';


class NuwaraEliya extends StatelessWidget {
   NuwaraEliya({Key? key, required image, required text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: 'Queen Victoria Park',
        subtitle: 'See more...',
        image: 'assets/images/vQueen Victoria Park.jpg', 
        description: 'Nestled in the heart of Nuwara Eliya, Queen Victoria Park is a testament to the colonial influence that once pervaded this region, named in honor of the British monarch reigning at the time of its establishment. Covering approximately 27 acres of land, this meticulously       with a vast collection of flora, including numerous varieties of roses, orchids, and decorative bushes, which create a vibrant tapestry of colors and scents throughout the year. Visitors can meander along the network of paths that crisscross the park, discovering serene ponds and quaint bridges that offer picturesque spots for relaxation and reflection. The park also features a miniature train, delighting children and adults alike with leisurely rides through the scenic landscapes. Queen Victoria Park is not just a place of botanical interest; it serves as a venue for flower shows and horticultural exhibitions, drawing enthusiasts from around the globe'),
    Place(
        name: 'Moon Plains',
        subtitle: 'See more...',
        image: 'assets/images/vMoon Plains.jpg',
        description: 'Opened to the public in 2014, Moon Plains is one of Nuwara Eliya’s hidden gems, offering expansive, unobstructed views of Sri Lanka’s central highlands. The vast open landscape, characterized by its lush greenery and the backdrop of distant mountains, provides a 360-degree view that includes the towering peaks of Pidurutalagala, Sri Lanka’s highest mountain. A key attraction is the Mini Worlds End a viewpoint offering breathtaking panoramas. The site also has a significant ecological importance, hosting a variety of wildlife and endemic plant species. Ideal for adventurers and nature enthusiasts, Moon Plains promises a serene yet exhilarating experience.'),
    Place(
        name: 'Seetha Amman Kovil',
        subtitle: 'See more...',
        image: 'assets/images/vSeetha Amman Kovil.jpg',
        description: 'Seetha Amman Kovil stands as a vibrant beacon of faith and mythology, located on the outskirts of Nuwara Eliya. This Hindu temple, adorned with intricate carvings and colorful statues, is believed to mark the spot where Sita was held captive by the demon king Ravana, as narrated in the epic Ramayana. The temples location by a stream adds to its serene ambiance, making it a place of spiritual solace and cultural significance. Pilgrims and tourists alike are drawn to its annual festivals, which celebrate the enduring love and resilience of Sita, amidst performances, rituals, and communal gatherings.'),
    Place(
        name: 'Horton Plains',
        subtitle: 'See more...',
        image: 'assets/images/vHorton Plains National Park.jpg',
        description:'Horton Plains National Park, a UNESCO World Heritage Site, is an ecological wonderland located at an elevation of over 2,000 meters. This unique ecosystem features rolling hills, misty forests, and the famous World’s End - a sheer precipice offering dramatic views of the valley below. The park is home to a rich diversity of flora and fauna, some of which are endemic to the region. Popular among hikers, the park’s trails lead to stunning natural attractions, including Baker’s Falls. Horton Plains provides a surreal experience of nature’s majesty, challenging trekkers and rewarding them with unparalleled natural beauty.',),
    Place(
        name: 'Lake Gregory',
        subtitle: 'See more...',
        image: 'assets/images/vLake Gregory.jpg',
        description:'Constructed during the British colonial period, Lake Gregory is a centerpiece of leisure and scenic beauty in Nuwara Eliya. This tranquil lake offers recreational activities like boating, jet skiing, and horse riding along its banks. Surrounded by lush greenery and tea plantations, the lakes calm waters reflect the changing skies and surrounding mountains, creating a picturesque setting for relaxation and photography. Families, couples, and solo travelers can enjoy a peaceful day out, walking or cycling around the lake, and indulging in freshly caught trout from the lakes rich waters.'),
    Place(
        name: 'Lover’s Leap',
        subtitle: 'See more...',
        image: 'assets/images/vLover Leap.jpg',
        description:'The tale of Lover’s Leap lends a romantic aura to this stunning waterfall located near Nuwara Eliya. According to legend, a tragic love story ended with a leap from this waterfall, which cascades down from a height, creating a mesmerizing sight. Accessible through a scenic hike through tea plantations, the journey to Lover’s Leap itself is a rewarding experience, offering panoramic views of the surrounding countryside. The sites natural beauty and folklore attract both nature lovers and those intrigued by local legends, making it a captivating destination.'),
    Place(
        name: 'Hakgala Botanical Garden',
        subtitle: 'See more...',
        image: 'assets/images/vHakgala Botanical Garden1.jpg',
        description:'At the foothills of the Hakgala Rock, the Hakgala Botanical Garden unfolds in a splendid display of flora. Established in 1861, it is the second largest garden in Sri Lanka, famed for its collection of orchids and roses. The gardens cool temperate climate supports a diverse range of plant species, including an exotic fernery and a Japanese garden. Myths weave through the gardens history, suggesting it was once the pleasure garden of the mythical King Ravana. Today, it is a tranquil retreat that captivates botanists, nature enthusiasts, and those seeking a peaceful escape among vibrant blooms and verdant paths.'),
    Place(
        name: 'Devon Falls',
        subtitle: 'See more...',
        image: 'assets/images/vDevon Falls.jpg',
        description:'Named after a pioneering English coffee planter, Devon Falls is a spectacular waterfall located along the Nuwara Eliya-Kandy Road. Plunging from a height of 97 meters, the waterfall is a breathtaking sight, especially during the monsoon when it is at its fullest. A viewing point on the main road offers easy access to witness the falls, while more adventurous visitors can take a closer trail for a closer look. The surrounding landscape, characterized by lush vegetation and tea plantations, makes Devon Falls not just a natural attraction but also a picturesque spot for photography and relaxation. '),
    Place(
        name: 'Single Tree Hill',
        subtitle: 'See more...',
        image: 'assets/images/vSingle Tree Hill.jpg',
        description:'Single Tree Hill stands as a symbol of solitude and panoramic beauty in Nuwara Eliya. As the name suggests, a single, prominent tree marks the summit, offering a 360-degree view of the surrounding landscapes, including the town below and the vast tea estates. The hike to the top is relatively easy, making it accessible for most visitors. At 2,100 meters above sea level, it is one of the best vantage points in the area, ideal for sunrise or sunset viewings. This tranquil spot is perfect for contemplation, nature walks, and capturing the beauty of Sri Lankas hill country.'),
    Place(
        name: 'Ambewela Farm',
        subtitle: 'See more...',
        image: 'assets/images/vAmbewela Farm.jpg',
        description:'Often referred to as "Little New Zealand", Ambewela Farm is a testament to Sri Lankas rich dairy farming tradition. Situated in the lush highlands of Nuwara Eliya, the farms sprawling pastures are home to high-yielding cattle breeds, providing a glimpse into the countrys efforts at self-sufficiency in milk production. Visitors can tour the farm to learn about the milking process, cheese making, and the care of animals. The clean, crisp air and the rolling green landscapes offer a peaceful retreat, making Ambewela Farm a unique attraction for families and those interested in agriculture and animal husbandry.'),   
  ];
  
  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' Nuwara Eliya CITY',
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
                image: AssetImage('assets/images/vNuwara_Eliya.jpg'),
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
