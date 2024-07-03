 import 'package:flutter/material.dart';  
  
class Polonnaruwa extends StatelessWidget {  
   Polonnaruwa({Key? key, required image, required text}) : super(key: key);  
  
  final List<Place> places = [  
    Place(  
        name: 'Gal viharaya',  
        subtitle: 'See more...',  
        image: 'assets/images/Gal viharaya.jpg',   
        description: 'Gal Viharaya is a rock temple of the Lord Buddha which is situated in Nissankamalpura in Polonnaruwa. It was built by King Parakramabahu I in the 12th century. The highlight of the Gal Viharaya is the four rock relief statues of the Buddha, which have been carved into the face of a single large rock made of granite. These statues include a large seated figure, standing figure, reclining figure and a smaller seated figure of the Buddha inside an artificial cavern. Gal Viharaya was originally known as Uttararama.'),  
    Place(  
        name: 'Parakrama Samudraya',  
        subtitle: 'See more...',  
        image: 'assets/images/parakrama samudraya.jpg', 
        description: 'Parakrama Samudraya is considered one of the most valued creations in Sri Lankan history which was built by the great King Parakramabahu. The Parakrama Samudraya reservoir was built combining three rivers named Topa wewa, Dumutulu wewa, and Eramuduwewa. The Akas Ganga was built to divert water to the Parakrama Samudraya by constructing a dam across the Amban Ganga at Angamedilla. The ruins of the old granite anicut still remain today. The Angamedilla Anicut and the sluice gate of the Bhuwewa, which were used in the past and are of ancient value, can also be described as ancient irrigation structures that still exist today.'),  
    Place(  
        name: 'Minneriya National Park',  
        subtitle: 'See more...',  
        image: 'assets/images/minneriya.jpg',  
        description: ' Declared a National Park on August 12, 1997, it extends in a dry area 9 kilometers east of the town of Habarana. The Minneriya water catchment area surrounded by a green prairie area is the vital center of the park. National Park that covers an area of 8,889 hectares is of tropical monsoon climate: annual rainfall is about 1146mm and mean annual temperature is 27.5 centigrade. The altitude ranges from100m to 885m at the top of Nilgala peak.'),  
    Place(  
        name: 'Somawathiya Temple',  
        subtitle: 'See more...',  
        image: 'assets/images/somawathiya.jpg',  
        description: ' Somawathiya (Somawathi Chethiya) was built in the 2nd century BC and this stupa is said to enshrine the right tooth relic of Lord Buddha.According to the chronicles, Prince Giri-aba and Princess Somawathi (sister of King Kavanthissa) lived in a small community called “Somapura” on the beds of Mahaweli River. Price Giriaba constructed Somawathi Chethiya at the request of his wife who wanted to engage in religious activities. Upon completion of the Stupa, the prince requested a monk named Mahinda for some “dathu” to be enshrined in the relic chamber of the stupa. Maha Thera Mahinda gave him the right tooth relic of Lord Buddha.'),  
     Place(  
        name: 'Nissankalata Mandapaya',  
        subtitle: 'See more...',  
        image: 'assets/images/nissanka.jpg',  
        description: 'Nissanka Latha Mandapaya is a square building with fine rock-cut railing g going all around lying the Dalada Maluwa area of the ancient kingdom of Polonnaruwa. This building was built by King Nissanka Malla (1187-1196).The most important feature of this building is the shape and the carvings of the stone pillars. These pillars are carved in the shape of a lotus stem and are curved in three places. The top of the pillars takes the form of a lotus flower. In the center is a small Stupa. The whole building is surrounded by a fence made out of stone.'),  
      Place(  
        name: 'King Parakramabahu Statue',  
        subtitle: 'See more...',  
        image: 'assets/images/parakramabhahu statue.jpg',  
        description: ' This beautifully carved statue stands 11½ feet (3.5 meters) in height and is carved into a semi-circular rock. Popular belief is that this is the statue of King Parakramabahu (1153-1186) thus generally known as the Parakramabahu Statue. Another belief is that this is a statue of an Indian high priest (probably “Kapila” of “Pulasthi”). The long beard and the mustache, the hair, the clothing, and the body with a slightly large stomach are not what you would expect from a statue of a great king .'),
Place(  
        name: 'Kaudulla National Park',  
        subtitle: 'See more...',  
        image: 'assets/images/Kaudulla.jpg',
        description:'Kaudulla National Park, a dry evergreen forest that spread over an area of 6656 hectares is connected to the corridor between nearby Minneriya Wildlife Park and Kaudulla.The average annual rainfall is between 1500 mm. – 2000 mm. The rain is mainly from north-eastern monsoon. Dry weather condition prevails during the period from April–October in the year. The average annual temperature varies between 20.6 C – 34.5 C. '),  
     Place(  
        name: 'Gal Potha Stone Inscription',  
        subtitle: 'See more...',  
        image: 'assets/images/gal potha.jpg',  
        description:'Gal Potha (Stone Book) is one of the famous works of King Nissanka Malla (1187-1196) which describes himself, his rule and the eligibility for being a king of Sri Lanka. This massive slab which is 26.10feet (8.2 meters) long and 4.7 feet (1.4 meters) in breath has been brought form Mahiyangana area by the worriers of King Nissanka Malla (1187-1196). The text is written in 3 columns and contain over 4300 characters in 72 lines. '),  
     Place(
      name: 'Polonnaruwa Vatadage', 
     subtitle: 'See more...',
      image: 'assets/images/vatadage.jpg', 
      description: ' It is believed to have been built during the reign of Parakramabahu I to hold the Relic of the tooth of the Buddha or during the reign of Nissanka Malla of Polonnaruwa to hold the alms bowl used by the Buddha. Both these venerated relics would have given the structure a great significance and importance at the time. Located within the ancient city of Polonnaruwa, it is the best preserved example of a vatadage in the country, and has been described as the "ultimate development" of this type of architecture. Abandoned for several centuries, excavation work at the Polonnaruwa Vatadage began in 1903. Built for the protection of a small stupa, the structure has two stone platforms decorated with elaborate stone carvings.'),
  ];  
    
  static get description => null;  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        backgroundColor: Colors.blue,
        title: const Center(  
          child: Text(  
            'PLACE TO VISIT \n' ' POLONNARUWA CITY',  
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
                image: AssetImage('assets/images/council.jpg'),  
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
            const SizedBox(height: 10),  
             Text(place.description  
              , // Add your description text here  
              style: const TextStyle(fontSize: 16),  
              textAlign: TextAlign.center,  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}
