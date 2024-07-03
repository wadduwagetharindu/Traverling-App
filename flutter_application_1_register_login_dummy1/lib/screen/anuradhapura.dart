import 'package:flutter/material.dart';

class Anuradhapura extends StatelessWidget {
  Anuradhapura({Key? key, required image, required String text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: 'Sri Maha Bodhi',
        subtitle: 'See more...',
        image: 'assets/images/vsri.jpeg',
        description:
            "UNESCO has determined the sacred city of Anuradhapura as a World Heritage. The preliminary analysis for the historical city of Anuradhapura to become a sacred city was the Jaya Sri Maha Bodhi. According to the documented evidence, this sacred tree was located in the old Maha Megha Vana Royal Park in Anuradhapura in ‘Unduvap’ (December), 236 BC. The sacred Bodhi sapling has been ceremonially taken here by Arahant Sanghamitta Maha There, under the guidance of Arahant Mihindu Maha Thero. King Devanampiyatissa, who ruled Sri Lanka, has settled this Bodhi tree with royal pageantry in the Maha Megha Vana Royal Park devoted to the grand bhikkhus. The existing age of the Anuradhapura Jaya Sri Maha Bodhi is 2,247 years. Therefore, the most beloved tree of the atmosphere with a written history is the Jaya Sri Maha Bodhi of Anuradhapura."),
    Place(
        name: 'Ruwanwelisaya Stupa',
        subtitle: 'See more...',
        image: 'assets/images/vruwan.jpeg',
        description:
            "Ruwanwelisaya Stupa is a sizeable white stupa that predates the Jetavanarama stupa by over 1000 years. King Dutugemunu, who became king after defeating King Elara, managed its construction in 161 B.C. Wistfully, he did not live long enough to view its achievement. The gleaming white building is pretty extensive, with a height of 91.4 meters and a perimeter of 290 meters. It is the second-highest stupa in Anuradhapura and remains an influential site of worship."),
    Place(
        name: 'Jetawanaramaya Stupa',
        subtitle: 'See more...',
        image: 'assets/images/vjeta.jpeg',
        description:
            "Jetawanaramaya was built by King Mahasen (276-303 AC). King Mahasen was a follower of Mahayana Buddhism. Jetavanarama is unique because of its massive stupa. The premises where the Jetavanarama is located earlier referred to Nandana Park. It is the area where Thera Mahinda preached the Dhamma for seven continuous days. Concluded with all the structures required for a monastery, buildings here, in addition to those built by King Mahasen, had been constructed by Kitisirimevan (303-331 AC) and kings who worked him. "),
    Place(
        name: 'Isurumuniya Temple',
        subtitle: 'See more...',
        image: 'assets/images/visuru.jpeg',
        description:
            "The Isurumuniya Viharaya is located near Tisa Wewa in Anuradhapura. There is a Viharaya attached to a cave, and above is a rock. A small stupa is established on it. Isurumuniya is renowned for its stone carvings, and the one is recognised as Isurumuniya Lovers is the most-admired and world-famous. The different carvings are of the Horseman, Elephant Pond and the Royal Family. The Isurumuniya Viharaya was built through the regime of Devanampiya Tissa, who ruled the ancient capital Anuradhapura. The Temple was created as a spiritual complex to house recently orientated monks. Some consider Isurumuni lovers are a representative of Hindu Gods Shiva and Parvati. However, according to Dr Paranawithana, it is thought that it’s a depiction of Prince Saliya, son of King Dutugemunu and Asokamala, a poor woman whom the prince preferred over the throne. The Bathing Elephants are different stone carvings favoured by several, and they make an extraordinary impact as you enter the temple premises. But, the carvings differ in their reproduction. Hence it is assumed that two artists did the work with varied techniques at various ages."),
    Place(
        name: 'Samadhi Buddha Statue',
        subtitle: 'See more...',
        image: 'assets/images/vsamadhi.jpeg',
        description:
            "The Samadhi Buddha statue at Anuradhapura is among the best-preserved figures in the country. It is famous for setting the bar against which all other statues of its kind are found. In age, the Samadhi Buddha statue records back to either the 3rd or 4th Centuries AD, albeit its producer and advocate are unknown. The park of Mahamewna, though, escorted back to the 3rd Century BC and was amongst the most advanced generous gardens in the nation, sponsored by King Mutasiva. The present Samadhi Buddha statue reveals him in a state of thoughtful consideration, one hand on top of the other on his seat in a dhyana mudra, a gesture of peace. His feet are joined in the veerasana pose. In sum, this is a giant statue, seven feet three inches high. As it is heavily restored, it is thought by many to have slightly lost its initial value. Particularly in the nose, this had to be revised with cement after being destroyed during the 19th Century."),
    Place(
        name: 'Abhayagiri Stupa',
        subtitle: 'See more...',
        image: 'assets/images/vabaya.webp',
        description:
            "Abhayagiri Stupa in Anuradhapura, the second most abundant of the stupas in Sri Lanka, was constructed by King Vattagamini Valagamba (89-77 BC). This continues up to the area of approximately 200 hectares. According to Bhikkhu Fa-Hsien, who toured Sri Lanka in the fifth century, there had been three thousand resident monks in the Mahavihara and five thousand monks in the Abhayagiri. The growth of Abhayagiri spread its peak in the reign of King Mahasen and was the core of Mahayana Buddhism. Buddhist structures found in the suburbs of Abhayagri show that this complex had been an essential educative institution both regionally and globally."),
    Place(
        name: 'Mihinthalaya',
        subtitle: 'See more...',
        image: 'assets/images/vmihinthalaya.jpeg',
        description:
            "Mihintale is a hill peak near Anuradhapura in Sri Lanka. It is assumed by Sri Lankans to be the site of a meeting between the Buddhist hermit Mahinda and King Devanampiyatissa, which inaugurated the appearance of Buddhism in Sri Lanka. It is now a pilgrimage place and the site of several religious monuments and abandoned structures. According to the Mahavamsa, Thera Mahinda (son of India’s Emperor Asoka) came to Sri Lanka on the full moon day of Poson (June) and met King Devanampiyatissa preached the doctrine to the King and his people. The Buddhists of Sri Lanka revere the traditional spot where this meeting took place."),
  ];
  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' ANURADHAPURA CITY',
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
                image: AssetImage('assets/images/vapura.jpeg'),
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
                    color: const Color.fromARGB(255, 208, 188, 212)
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
