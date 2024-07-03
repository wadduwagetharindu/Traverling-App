import 'package:flutter/material.dart';

class Gampaha extends StatelessWidget {
  Gampaha({Key? key, required image, required text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: 'Guruge national park',
        subtitle: 'See more...',
        image: 'assets/images/Guruge national park.jpg',
        description:
            'Guruge Nature Park is Sri Lanka’s first theme park, combining entertainment water fun with a beautiful history that traces life in Sri Lanka back to 547B.C. and the time of our first king. Guruge Nature Park is quite popular on weekends and holidays, and it is open from 9.00 a.m. to 6.00 p.m. every day. Your visit will certainly be a wonderful experience as you explore our magnificent cultural, traditional, and historical legacy, as well as the exciting attractions. '),
    Place(
        name: 'Maligatenna rajamaha viharaya',
        subtitle: 'See more...',
        image: 'assets/images/Maligatenna rajamaha viharaya.jpg',
        description:
            'Maligatenna Raja Maha Vihara is an ancient cave temple in Malwatuhiripitiya village, Gampaha District, Sri Lanka. The temple is located on the Gampaha-Wathuragama road, about 1.6 kilometers from the old shrine Pilikuththuwa Raja Maha Vihara. This temple is currently recognized as an archaeological protected site in Gampaha District by the Archaeological Department.'),
    Place(
        name: 'Henarathgoda botanical garden',
        subtitle: 'See more...',
        image: 'assets/images/Henarathgoda botanical garden.jpg',
        description:
            'Spend some quiet time in the wonderfully maintained botanical garden, which is full of lovely flowers and unusual species. Henarathgoda Botanical Garden is one of the most well-known botanical gardens in Sri Lanka, and it is a green oasis in the country’s bustling western district.This garden is a unique landmark in the Gampaha district that continues to attract both local and foreign visitors. The botanical garden covers around 40 acres and features a wide range of attractive plants that adorn the park throughout the year, adding to its timeless beauty. The garden includes a variety of herbs and spices that you will find in Sri Lanka.'),
    Place(
        name: 'Alagiyawanna falls ',
        subtitle: 'See more...',
        image: 'assets/images/Alagiyawanna falls.jpg',
        description:
            'This Alagiyawanna falls is one of Gampaha’s most stunning sights which is part of the Sri Lanka waterfall series. If you visit during the rainy season, you will be fortunate to discover the 4km cascade more playful, as it releases so much water with such intensity.The climb to the waterfall will be little bit difficult, but it will never disappoint you because it will undoubtedly reward you with a spectacular vista.The waterfall is in Nittambuwa. You will arrive at the Meewitigama intersection after turning at Nittambuwa onto the Urapola-Hanwella route. The waterfall is located 2 kilometers away towards Amitiyagala. '),
    Place(
        name: 'Horagolla national park',
        subtitle: 'See more...',
        image: 'assets/images/Horagolla national park.jpg',
        description:
            'Horagolla National Park is a minor national park in Sri Lanka that does not receive as many visitors as other national parks. But if you are visiting Gampaha, this lovely national park is one of the must see. Horagolla National Park is also one of the newest national parks, having been established recently. It has a remarkable biological diversity, and the park was designated as a wildlife refuge in 1973 before becoming a national park in 2004.Because the park is in Sri Lanka’s wet zone, visitors may see a wide variety of animals, including birds, mammals, reptiles, and fish'),
    Place(
        name: 'Dhaladagamuwa rajamaha\nviharaya',
        subtitle: 'See more...',
        image: 'assets/images/Dhaladagamuwa rajamaha viharaya.jpg',
        description:
            'This is an impressive spiritual location located within Gampaha’s borders. Arrive at Kalgedihena, which is located on Colombo’s Kandy Road. This temple has an immersing cultural, religious, and spiritual value that draws many devotes, and it is one of Sri Lanka’s most renowned and celebrated heritage sites. The temple incorporates several traditional Sri Lankan architectural elements, including murals inspired by Kandyan frescoes and paintings. The temple complex includes a sacred Bodhi tree, which is said to be a sprout from the Holy Jaya Sri Maha Bodhi Temple.'),
    Place(
        name: 'Negambo beach',
        subtitle: 'See more...',
        image: 'assets/images/Negambo beach.webp',
        description:
            'Negombo beach arena is well-known for the breathtaking atmosphere it creates throughout the year. Negombo is known as one of Sri Lanka’s most populous destinations, located in the Gampaha region, for a variety of reasons.One of the most significant advantages of living in Negombo is that it is only 20 minutes from Bandaranayaka International Airport.Keep some room for yourself when you arrive to discover this amazing site. Negombo is a fashionable beach resort formed and colored by vast ethnic and social diversity.The beachfront at Gampaha is must-see. That is what makes Negombo a paradise within reach of beach lovers'),
  ];

  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' GAMPAHA CITY',
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
                image: AssetImage('assets/images/Gam1.jpg'),
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