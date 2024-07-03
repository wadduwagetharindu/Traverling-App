import 'package:flutter/material.dart';

class Colombo extends StatelessWidget {
  Colombo({Key? key, required image, required String text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: 'Seema Malakaya Temple',
        subtitle: 'See more...',
        image: 'assets/images/vseema.jpeg',
        description:
            "Tucked away on Beira Lake, this serene Buddhist temple offers a peaceful escape from the city's hustle and bustle. Designed by Sri Lanka's famed architect Geoffrey Bawa, its tranquil ambiance and picturesque surroundings make it a hidden gem for spiritual reflection and photography enthusiasts alike."),
    Place(
        name: 'Dutch Hospital\n' 'Shopping Precinct',
        subtitle: 'See more...',
        image: 'assets/images/vdutch.png',
        description:
            'Nestled in the heart of Colombo Fort, this historic complex dating back to the colonial era has been transformed into a trendy shopping and dining destination. Visitors can explore boutique shops, savor delicious cuisine, and soak up the charming atmosphere amidst beautifully restored Dutch architecture.'),
    Place(
        name: 'Viharamahadevi Park',
        subtitle: 'See more...',
        image: 'assets/images/vvihara.jpeg',
        description:
            "Located in the heart of Colombo, this expansive urban park offers a tranquil retreat for nature lovers and families alike. Home to towering trees, vibrant flower beds, and scenic walking trails, it's the perfect spot for a relaxing picnic or a leisurely afternoon spent admiring local flora and fauna."),
    Place(
        name: 'Independence Arcade',
        subtitle: 'See more...',
        image: 'assets/images/vinde.jpeg',
        description:
            "Housed within a beautifully restored colonial building, this chic shopping and entertainment complex offers a sophisticated blend of history and modernity. Visitors can explore upscale boutiques, indulge in gourmet dining, or simply admire the architectural splendor while learning about Sri Lanka's journey to independence"),
    Place(
        name: 'National Museum of Colombo',
        subtitle: 'See more...',
        image: 'assets/images/vmuseum.jpeg',
        description:
            "Dive into Sri Lanka's rich history and cultural heritage at the National Museum of Colombo. From ancient artifacts to royal regalia, the museum houses a diverse collection spanning centuries, offering visitors an insightful journey through the island's past."),
    Place(
        name: 'Galle Face Green',
        subtitle: 'See more...',
        image: 'assets/images/vgalle.jpeg',
        description:
            "Stretching along the coast, Galle Face Green is a popular urban park where locals and tourists gather to unwind and enjoy stunning sunset views over the Indian Ocean. From kite flying to street food stalls, it's a vibrant hub of activity in the heart of the city."),
    Place(
        name: 'Old Parliament Building',
        subtitle: 'See more...',
        image: 'assets/images/vold.jpeg',
        description:
            "Marvel at the grandeur of British colonial architecture at the Old Parliament Building, a historic landmark dating back to the 1930s. While it no longer serves as the seat of government, its imposing façade and ornate interiors make it a must-visit for architecture enthusiasts."),
    Place(
        name: 'Pettah Market',
        subtitle: 'See more...',
        image: 'assets/images/vpettah.jpeg',
        description:
            "Immerse yourself in the bustling atmosphere of Pettah Market, Colombo's vibrant commercial district. From colorful textiles to aromatic spices, the market is a treasure trove of goods where visitors can haggle with local vendors and experience the lively energy of everyday life in the city."),
    Place(
        name: 'Kelaniya Raja Maha Vihara',
        subtitle: 'See more...',
        image: 'assets/images/vkelaniya.jpeg',
        description:
            "Explore one of Sri Lanka's most sacred Buddhist temples at Kelaniya Raja Maha Vihara. With its striking architecture and rich religious significance, the temple attracts pilgrims and visitors alike seeking spiritual solace and cultural immersion."),
    Place(
        name: 'Mount Lavinia Beach',
        subtitle: 'See more...',
        image: 'assets/images/vmv.jpeg',
        description:
            "Just a short drive from Colombo, Mount Lavinia Beach offers a blissful escape from the city's hustle. Whether you're looking to soak up the sun, enjoy water sports, or indulge in fresh seafood at beachfront restaurants, it's a perfect spot for relaxation and recreation by the sea."),
  ];
  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' COLOMBO CITY',
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
                image: AssetImage('assets/images/vclmb.jpeg'),
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
                    color: const Color.fromARGB(255, 197, 215, 224)
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

