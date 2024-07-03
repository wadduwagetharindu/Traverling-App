import 'package:flutter/material.dart'; 

 
class Trincomalee extends StatelessWidget { 
   Trincomalee({Key? key, required image, required text}) : super(key: key); 
 
  final List<Place> places = [ 
      Place( 
        name: 'Thiru Konewaram Kovil', 
        subtitle: 'See more...', 
        image: 'assets/images/Thiru Koneswaram kovil.jpg',  
        description: 'Thiru Koneswaram kovil is one of the age-old kovils in Sri Lanka. In the 16th century, it had one thousand pillars and was respected as one of the most affluent kovils in South East Asia. It had large quantities of gold, pearls, precious stones, and silk, gifted over one thousand years. Though unfortunately, the Temple was demolished by the Portuguese Commander of Army Constantine de Sa de Menzies in 1624, who used the rubbles to build a well-fortified Fort to prevent the Port of Trincomalee from falling to the opponents.'), 
      Place( 
        name: 'Nilaveli beach', 
        subtitle: 'See more...', 
        image: 'assets/images/Nilaveli beach.webp', 
        description: 'Nilaveli Beach is counted as one of Asia’s brightest white sand beaches, and the beach is comparatively less crowded than most beaches in Sri Lanka. Nilaveli Beach is approximately 10-15 km from Trincomalee in northeastern Sri Lanka.'), 
      Place( 
        name: 'Marble beach', 
        subtitle: 'See more...', 
        image: 'assets/images/Marble Beach.jpg', 
        description: '  The white sand and the marble flinders at the seabed give the water its stunning emerald color, which reminds of a tropical coast.Marble Beach is one of the gorgeous beaches in Trincomalee. Yet, few only know about this beach and 17 kilometres away from Trincomalee town. The air force operates a resort and restaurant at Marble Beach..'), 
      Place( 
        name: 'Pigeon Island National Park', 
        subtitle: 'See more...', 
        image: 'assets/images/pigeon Island National Park.jpg', 
        description: ' The Pigeon Island National Park, bordered by a coral reef near Nilaveli sands, was named a National Park under the Fauna and Flora Protection Ordinance in 2003. It is unique because the only national park in the nation to hold a colony of gorgeous Blue Rock pigeons and contains some of the best-surviving coral reefs in the country. Over 100 varieties of corals and more than 300 reef fish species have been recognised from the Trincomalee region. Many of these species are found within the Pigeon Islands National Park, consisting of about five hectares of land. About 1000 meters into the sea with the coral reef as the national park border. The island was toured by boat and was launched for tourism in 2002..'), 
      Place( 
        name: 'Villuntri Kandaswamy Kovil', 
        subtitle: 'See more...', 
        image: 'assets/images/Villuntri Kandaswamy Kovil.jpg', 
        description: ' One of the best things to see in Trincomalee are the very nice hindu temples.This one is not known as Lakshi Narayana or Koneswaram but is nice anyways so suggest to spend a bit of time here.You can visit the inner part and maybe you could be blessed by a local priest.'), 
      Place( 
        name: 'Sampoor Lighthouse', 
        subtitle: 'See more...', 
        image: 'assets/images/Sampoor Lighthouse.jpg', 
        description: 'Foul Point is the outer southeast point of Trincomalee Bay. The Foul Point Lighthouse (Sampur Lighthouse) was built in 1863 by the British with a height of 32 meters and diameter of 25 metres. The lighthouse is built in to 5 levels with steel stairs and has been guiding seafarers safely to their destinations for centuries.'),
      Place( 
        name: 'Uppuveli beach', 
        subtitle: 'See more...', 
        image: 'assets/images/Uppuveli beach.jpg', 
        description: 'uppuveli beach is only 3km from trincomalee town.uppuveli offers an exceptional balance between the palm tree-laden golden sandy beach, uppuveli looks straight east onto the indian ocean,making it another ideal location on the east to view an oceanfront sunrise.The most suitable time to visit is from february to november. '), 
      Place( 
        name: 'Sinnakarachchi Lake', 
        subtitle: 'See more...', 
        image: 'assets/images/Sinnakarachchi Lake.jpg', 
        description: ' Sinnakarachchi is the name of the lagoon of Nilaveli. It is situated to the north of Trincomalee. The famous holiday destination Nilaveli Beach is a 7.5 km long and 1.5 km wide spit of land in between the ocean and this Sinnakarachchi Lagoon, which opens to the sea north of Nilaveli, just below the bridge connecting the villages of Irakkakandi and Kumpurupiddi. Actually, the former village is also namegiving to the lagoon of Nilaveli, as Lagoon is sometimes called Irakkakandi Lagoon. The mouth of the lagoon near Irakkakandi villag.'), 
     Place( 
        name: 'Ancient Sluice of Kantale Tank', 
        subtitle: 'See more...', 
        image: 'assets/images/Ancient Sluice of Kantale Tank.jpg', 
        description: 'Kanthale tank is one of the biggest and ancient reservoirs in Sri Lanka. Its a living proof of Sri Lankas ancient reservoir building technology and has a wonderful scenary.'), 
      Place( 
        name: 'Sri Lakshmi Narayana Perumal', 
        subtitle: 'See more...', 
        image: 'assets/images/Sri Lakshmi Narayana Perumal.jpg', 
        description: 'The construction of the temple dedicated to Laxmi Narayana started in 1933, built by industrialist and philanthropist, Baldeo Das Birla and his son Jugal Kishore Birla of the Birla family'),

  ]; 
   
  static get description => null; 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: Colors.blue, 
        title: const Center( 
          child: Text( 
            'PLACE TO VISIT \n' ' Trincomalee CITY', 
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
                image: AssetImage('assets/images/Trinco.webp'), 
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