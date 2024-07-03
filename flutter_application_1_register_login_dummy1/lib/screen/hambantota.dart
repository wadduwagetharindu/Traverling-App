import 'package:flutter/material.dart';  
 
  
class Hambantota extends StatelessWidget {  
   Hambantota({Key? key, required image, required text}) : super(key: key);  
  
  final List<Place> places = [  
    Place(  
        name: 'Tissamaharama Raja\nMahaviharaya',  
        subtitle: 'See more...',  
        image: 'assets/images/Tissamaharama Raja Mahaviharaya.jpg',   
        description: 'An ancient Buddhist temple. King Kavantissa built this temple and a large dagoba by treasuring the relics of Lord Buddha. Tissa Lake is located nearby. Therefore, it has been concluded that the village, the temple and the tank were built according to the concept of the Dagaba.Tissamaharama Stupa is the largest stupa in the Southern region of the country with a height of 156 feet and 550 feet in circumference'),  
    Place(  
        name: 'Ridiyagama Safari Park',  
        subtitle: 'See more...',  
        image: 'assets/images/Ridiyagama Safari Park.webp', 
        description: 'Ridiyagama safari park is the first ever man made safari park in Sri Lanka which opened its doors to the public in 2016. It was built for tourism with the assistance of the National Zoological department of Sri Lanka. Spanning across 500 acres, the park consists of 22 species of animals which mainly includes mammals and birds.The first phase with the 35-acre African Lion Zone, 54-acre Sri Lanka Elephant Zone and 80 acres World Zone was opened to the public. African, Asian, Australian Zones and a small animal kingdom is under construction as the second phase.'),  
    Place(  
        name: 'Madunagala Hot Water Spring',  
        subtitle: 'See more...',  
        image: 'assets/images/Madunagala Hot Water Spring.jpg',  
        description: ' The Madunagala springs occur in the boundary between Highland Complex (HC) and Vijayan Complex (VC). There are six connected hot water wells at the Madunagala springs site. The surface temperatures of water are range from 34 °C to 46 °C and all of them are classified as warm thermal springs.'),  
    Place(  
        name: 'Bataatha Agro Technology Park',  
        subtitle: 'See more...',  
        image: 'assets/images/Bataatha Agro Technology and Tourism Park.jpg',  
        description: ' Agro Technology Park in Bata Atha (Bata Atha Farm) is located in the Hungama Batatha area in the Hambantota District in the Southern Province, this is another wonderful creation that has attracted local and foreign tourists. It is a kind of farm owned by the Department of Agriculture. But this is an open place for tourists from outside. You can also get a good clean "Ranawara" throat drink with no artificial ingredients and Things like vegetables and fruits can be bought for money.'),  
     Place(  
        name: 'Kirinda Beach',  
        subtitle: 'See more...',  
        image: 'assets/images/kirinda Beach.jpg',  
        description: 'Kirinda is a 3km long sandy beach in the south of Sri Lanka located near a fisherman village of the same name near a Buddhist stupa. High waves and picturesque reefs attract extreme surfing and underwater swimming enthusiasts here.'),  
      Place(  
        name: 'Dry Zone Botanic Garden',  
        subtitle: 'See more...',  
        image: 'assets/images/Dry Zone Botanic Garden.jpg',  
        description: ' Dry zone botanic gardens is the first botanic garden in Sri Lanka designed by the local experts and the first botanic garden created after botanic garden at Gampaha which was created 130 years ago. This is the first botanic garden in Sri Lanka created in the semi-arid zone to conserve semi-arid and dry zone plants ex-situ as one of the main purpose .'), 
     Place(  
        name: 'Hummanaya Blow Hole',  
        subtitle: 'See more...',  
        image: 'assets/images/Hummanaya Blow Hole.jpg',
        description:'The hummanaya is the only natural blowhole in the country and the second tallest in the world. A natural miracle consisting of water erupting out of a hole making it a breathtaking spectacle attracting many visitors.The Hummanaya Blow Hole is a natural wonder that sprays a jet of sea water into the air between two giant rocks; sometimes reaching heights of over 80 – 100 feet, and should be added to your list of things to see while you stay with us in Mirissa '),  
     Place(  
        name: 'Yala National Park',  
        subtitle: 'See more...',  
        image: 'assets/images/Yala National Park.jpg',  
        description:'Yala national park is a most visited and second largest national park in Sri Lanka . Home to variety of Wildlife some of which are endemic.yala national park is a huge area of forest,grassland and lagoons bordering the Indian Ocean, in southeast Sri Lanka. Yala is one of Sri Lanka"s oldest national parks and was designated a wildlife sanctuary as for back as 1900 though it was not until 1938 that it was established as a national park. '),  
     Place(  
        name: 'Sapugahadola Ella Falls',  
        subtitle: 'See more...',  
        image: 'assets/images/Sapugahadola Ella Falls.jpg',  
        description:'The sources of this 25-meter-high Sapugahadola Ella (Ranmale Biso Ella/Sapugaharoda Ella ) fall are the brooks flowing down the Rammale mountain range (Ranmala Kanda). It flows onto the Warapitiya Reservoir and then the Kirma River. The first part of the waterfall is a dead drop onto a ledge of about 12m in height. Then the water falls over another 12-13 meters.'),  
     Place(  
        name: 'Katuwana Fort ',  
        subtitle: 'See more...',  
        image: 'assets/images/Katuwana Fort.jpg',  
        description:' It is a Dutch fortress and a trading center built inland in the southern part of the country in the near vicinity of Sinha raja rain forest. Built in 1646AD and captured by Lankan king Keerthi Sri Rajasinghe In 1761AD and destroyed. Later British captured and abandoned after some time.'),  
 
  ];  
    
  static get description => null;  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar( 
        backgroundColor: Colors.blue, 
        title: const Center(  
          child: Text(  
            'PLACE TO VISIT \n' ' HAMBANTOTA CITY',  
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
                image: AssetImage('assets/images/hamb.jpg'),  
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
