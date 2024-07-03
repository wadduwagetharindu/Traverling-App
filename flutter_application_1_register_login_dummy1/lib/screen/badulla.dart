import 'package:flutter/material.dart';


class Badulla extends StatelessWidget {
   Badulla({Key? key, required image, required String text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: 'Ella Rock',
        subtitle: 'See more...',
        image: 'assets/images/vElla Rock.jpg', 
        description: 'Ella Rock is a popular hiking destination located near the town of Ella in the hill country of Sri Lanka. It offers stunning panoramic views of the surrounding countryside, including tea plantations, forests, and valleys. The hike to Ella Rock typically takes around 2-3 hours, depending on your starting point and hiking speed. The trail to Ella Rock can be a bit challenging in some sections, with steep climbs and narrow paths, but the effort is well worth it for the breathtaking scenery at the top. Along the way, hikers pass through picturesque villages and lush greenery, adding to the charm of the experience. It is advisable to start the hike early in the morning to avoid the heat of the day and to allow plenty of time to enjoy the views from the summit. Additionally, wearing proper hiking shoes, bringing plenty of water, and carrying a map or GPS device are recommended for a safe and enjoyable hike. Overall, Ella Rock is a must-visit destination for nature lovers and outdoor enthusiasts visiting Sri Lanka, offering a memorable hiking experience and unforgettable views of the island is stunning landscapes.'),
    Place(
        name: 'The Nine Arch Bridge',
        subtitle: 'See more...',
        image: 'assets/images/vNine Arch Bridge.jpg',
        description: 'The Nine Arch Bridge, also known as the Demodara Bridge, is a marvel of colonial-era railway engineering located in the hill country of Sri Lanka. The Nine Arch Bridge was built during the British colonial period in Ceylon, as Sri Lanka was then known, in the early 20th century. The exact date of construction is believed to be around 1921. The bridge was part of the British colonial governments ambitious railway expansion project, which aimed to connect various parts of the island for trade and transportation purposes. The bridges design and construction were undertaken by British engineers and local laborers. It is renowned for its impressive nine arches, which give the bridge its name.'),
    Place(
        name: 'Narangala',
        subtitle: 'See more...',
        image: 'assets/images/vNarangala.jpg',
        description: 'Narangala is also popularly known as Thanga-malai, which means Golden Mountain’ in Tamil. This mountain has received this name due to the golden grasses that blanket its slopes. Narangala is situated in the Badulla district, Uva Province of Sri Lanka. Rising up to approx. 1,500 meters, this is the eighth highest peak in the Uva Province. Narangala has a rectangular shaped plateau and triangular shaped peak. Best time to visit Narangala and Weather conditions in Badulla, usually, it rains cats and dogs in July, October and November. The first quarter of the year, i.e. January to March, is the best period to visit Badulla, where the temperature could vary between 18°-22°.Hiking to Narangala is a good challenge and worth the attempt. It is better to wear warm clothing and hiking boots and make sure to carry some water bottles, some energy drinks if you like, and if necessary, have some bug repellant just in case you come across any unavoidable circumstances. You could take your vehicle up to the Hindu temple in the estate'),
    Place(
        name: 'Dunhinda Falls',
        subtitle: 'See more...',
        image: 'assets/images/vDunhinda Falls.jpg',
        description:'Dunhinda Falls is a beautiful waterfall located in the Badulla District of Sri Lanka. It is one of the most famous and picturesque waterfalls in the country, attracting tourists and nature enthusiasts from all over the world. The Dunhinda Falls is situated about 5 kilometres from the town of Badulla, which is the capital of the Uva Province in Sri Lanka. The waterfall is formed by the Badulu Oya, a tributary of the Kuda Oya, which is a major river in the region. The name "Dunhinda" means "smoky mist", which is an apt description of the mist that rises from the base of the waterfall as the water cascades down from a height of approximately 64 meters (210 feet). The surrounding area is lush with tropical vegetation, adding to the natural beauty of the waterfall.',),
    Place(
        name: 'Muthiyangana Rajamaha\nViharaya',
        subtitle: 'See more...',
        image: 'assets/images/vMuthiyangana Rajamaha viharaya.jpg',
        description:'Muthiyangana Rajamaha Viharaya is a Buddhist temple located in Badulla, Sri Lanka. It holds significant religious and historical importance in the country and is a popular pilgrimage site for Buddhists. The temple is situated in Badulla, which is the capital city of the Uva Province in Sri Lanka. Badulla is known for its scenic beauty and historical landmarks. Muthiyangana Rajamaha Viharaya is believed to have been visited by Lord Buddha during his third visit to Sri Lanka. According to Buddhist tradition, it is one of the 16 places visited by Buddha during his visit to the island. The temple has a history dating back to over 2,500 years. The temple features typical Buddhist architecture with intricate designs and carvings. It has several structures including a stupa, image house, Bodhi tree, and various shrines dedicated to different deities.'),
    Place(
        name: 'Dhowa Temple',
        subtitle: 'See more...',
        image: 'assets/images/vDhowa Temple.png',
        description:'Dhowa Rock Temple, also known as Dhowa Rajamaha Viharaya, is a historic Buddhist temple located near Bandarawela in the Uva Province of Sri Lanka. Dhowa Temple is situated in the village of Dhowa, which is approximately 6 kilometres away from the town of Bandarawela in the Badulla District of Sri Lanka. The temple is nestled amidst scenic surroundings and is easily accessible by road. The temple dates back to the 2nd century BCE, making it one of the oldest Buddhist temples in Sri Lanka. Dhowa Temple is renowned for its impressive rock-cut Buddha statue, which is believed to be over 2,000 years old. The statue, which is carved into the face of a large granite rock, measures approximately 38 feet in length. The temple also features ancient cave paintings and inscriptions, providing valuable insights into the regions history and culture. The temple holds great religious significance for Buddhists in Sri Lanka. It serves as a place of worship and meditation, attracting pilgrims and devotees from across the country.'),
    Place(
        name: 'Lipton Seat',
        subtitle: 'See more...',
        image: 'assets/images/vLipton Seat.jpg',
        description:'Lipton Seat is a renowned viewpoint located in the Haputale area of the Badulla District in Sri Lanka. Lipton Seat is situated approximately 10 kilometres southeast of Haputale town, which is in the central highlands of Sri Lanka. It is nestled amidst the verdant tea plantations of the region. Liptons Seat is named after Sir Thomas Lipton, a Scottish tea magnate who played a significant role in the development of the tea industry in Sri Lanka during the late 19th and early 20th centuries. The viewpoint is believed to be one of Sir Thomas Liptons Favorite spots where he used to admire the breathtaking views of the surrounding tea estates. Liptons Seat offers stunning panoramic views of the surrounding hills, valleys, and tea plantations. On a clear day, visitors can see as far as the southern coast of Sri Lanka.'),
    Place(
        name: 'The Bogoda Wooden Bridge',
        subtitle: 'See more...',
        image: 'assets/images/vBogoda Wooden Bridge.jpg',
        description:'The Bogoda Wooden Bridge is a historic wooden bridge located near the town of Badulla in Sri Lanka. The Bogoda Wooden Bridge is situated in the village of Bogoda, which is approximately 13 kilometres away from the town of Badulla in the Uva Province of Sri Lanka. It is nestled amidst lush greenery and scenic surroundings. The Bogoda Wooden Bridge is believed to be one of the oldest surviving wooden bridges in Sri Lanka, dating back to the 16th century. The Bogoda Wooden Bridge is constructed entirely of wood, using a combination of jak (Artocarpus heterophyllus) and kumbuk (Terminalia arjuna) timber. It features a unique design with intricate carvings and craftsmanship. The bridge is supported by massive wooden columns and beams, which are carefully assembled without the use of nails or metal fasteners. The Bogoda Wooden Bridge is located near the Bogoda Raja Maha Viharaya, a historic Buddhist temple. '),
    Place(
        name: 'Madulsima',
        subtitle: 'See more...',
        image: 'assets/images/vMadulsima.jpg',
        description:'Madulsima is a picturesque town located in the Badulla District of the Uva Province in Sri Lanka. It is surrounded by lush greenery, tea plantations, and scenic mountains. Madulsima is renowned for its stunning natural beauty. The town is nestled amidst rolling hills, verdant valleys, and cascading waterfalls, making it a popular destination for nature lovers and outdoor enthusiasts. Like much of the surrounding region, Madulsima is characterized by vast expanses of tea plantations. The areas cool climate and fertile soil provide ideal conditions for tea cultivation, and many tea estates dot the landscape. Madulsima is home to a diverse range of flora and fauna. The surrounding forests harbor various species of birds, butterflies, and small mammals, making it a paradise for birdwatchers and wildlife enthusiasts.'),
    Place(
        name: 'Idalgashinna',
        subtitle: 'See more...',
        image: 'assets/images/vIdalgashinna.jpg',
        description:'Idalgashinna a small village in the Badulla District, Uva Province, Sri Lanka. Situated at an elevation of about 1,615 metres (5,299 ft) above sea level, it is located in the Haputale-Namunukula mountain range. The area is home to the Idalgashinna Estate, with the closest large town being Haputale, about 9km south on the railway. Between the two locales lies the Thangamale Bird Sanctuary. Situated in the Badulla District, Idalgashinna is known for its scenic beauty, tea plantations, and cool climate. The region is part of the hill country of Sri Lanka, characterized by lush greenery, misty mountains, and cascading waterfalls. Tea cultivation is one of the primary economic activities in Idalgashinna, and the town is surrounded by vast tea estates that produce high-quality Ceylon tea. '),   
  ];
  
  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' BADULLA CITY',
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
                image: AssetImage('assets/images/vcaption.jpg'),
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
