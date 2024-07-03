import 'package:flutter/material.dart';

class Kalutara extends StatelessWidget {
   Kalutara({Key? key, required image, required text}) : super(key: key);

  final List<Place> places = [
    Place(
        name: 'Fa-Hien Lena',
        subtitle: 'See more...',
        image: 'assets/images/Fa-Hien Lena.jpg', 
        description: 'Fa-Hien Lena, nestled in Kalutara District, Sri Lanka, beckons travelers with its ancient allure. As one of Asias largest natural rock caves and a cradle of human history dating back 37,000 years, it offers a captivating journey through time. Within its expansive chambers, relics such as stone tools, pottery fragments, and human remains unveil the lifestyles of prehistoric communities. The caves grandeur, with towering rock formations and mystical stalactites, mesmerizes visitors, while Fa-Hien Rock atop provides panoramic vistas. Named after the revered Chinese monk Faxian, who purportedly visited in the 5th century CE, it adds a layer of historical intrigue. Fa-Hien Lena serves as a tangible link to Sri Lankas ancient past, enriching cultural and archaeological understanding. For travelers, it promises not just an exploration of a natural wonder, but a profound encounter with humanitys earliest chapters, making it an essential stop for those seeking to unravel the islands rich tapestry of history and heritage.'),
    Place(
        name: 'Kalutara Bodhiya',
        subtitle: 'See more...',
        image: 'assets/images/Kalutara Bodhiya.jpg',
        description: 'Kalutara Bodhiya, nestled in Sri Lankas Kalutara District, is a revered Buddhist sanctuary steeped in history and spirituality. This sacred site, believed to house a sapling from the revered Jaya Sri Maha Bodhi in Anuradhapura, offers pilgrims and travelers alike a profound journey into the heart of Buddhism. Located about 43 kilometers south of Colombo, the capital city, it beckons with its ornate stupa encircling the sacred Bodhi tree. Devotees flock here to pay homage, offer prayers, and participate in religious rituals. The temples traditional Sri Lankan architecture, adorned with intricate carvings and vibrant paintings, creates a serene atmosphere conducive to introspection and meditation. Surrounding the temple, vibrant markets offer a glimpse into local life, while nearby attractions like Kalutara Viharaya enrich the visitors experience. Kalutara Bodhiya is not just a place of worship; it is a spiritual oasis inviting travelers to delve into the islands rich religious heritage and find solace amidst its tranquil surroundings.'),
    Place(
        name: 'Kande Viharaya',
        subtitle: 'See more...',
        image: 'assets/images/Kande Vihara Temple.jpg',
        description: 'Kande Vihara Temple, nestled in Sri Lankas Kalutara District, is a revered Buddhist landmark offering travelers a glimpse into the islands rich religious heritage. Situated in Aluthgama, this sacred site is renowned for its towering Buddha statue, standing over 160 feet tall, which dominates the skyline. The temples serene surroundings and intricate architectural details create a tranquil atmosphere conducive to reflection and spiritual contemplation. Visitors can explore the temple complex, adorned with colorful murals, intricate carvings, and serene meditation halls, offering insight into Buddhist traditions and beliefs. Devotees and travelers alike come to pay homage, offer prayers, and partake in religious ceremonies, enriching their understanding of Sri Lankas cultural and spiritual tapestry. Surrounded by lush greenery and offering panoramic views of the surrounding landscape, Kande Vihara Temple promises a serene and enlightening experience for those seeking to connect with the islands profound spiritual legacy.'),
    Place(
        name: 'Kalutara Beach',
        subtitle: 'See more...',
        image: 'assets/images/Kalutara Beach.jpg',
        description:'Kalutara Beach, nestled along Sri Lankas western coast in the Kalutara District, beckons travelers with its pristine shores and serene ambiance. Stretching along the coastline, this idyllic beach offers visitors a perfect retreat for relaxation and rejuvenation. With its golden sands and clear blue waters, Kalutara Beach provides ample opportunities for sunbathing, swimming, and leisurely strolls along the shore. Adventurous souls can partake in water sports like surfing and snorkeling, while those seeking tranquility can simply soak in the breathtaking ocean views. The beachs vibrant atmosphere is complemented by nearby cafes, restaurants, and souvenir stalls, where travelers can indulge in local cuisine and shop for unique mementos. Sunset vistas over the Indian Ocean paint a picturesque backdrop, creating unforgettable memories for visitors. Whether basking in the tropical sun or enjoying a leisurely picnic with loved ones, Kalutara Beach offers an unforgettable coastal escape for travelers seeking a slice of paradise in Sri Lanka.'),
    Place(
        name: 'Richmond Castle',
        subtitle: 'See more...',
        image: 'assets/images/Richmond Castle.jpg',
        description:'Richmond Castle, situated in Sri Lankas Kalutara District, is a majestic colonial mansion that enchants travelers with its grandeur and historical significance. Built in the late 19th century, this architectural marvel offers a glimpse into the islands colonial past. Adorned with intricate woodwork, elegant furnishings, and sprawling gardens, Richmond Castle exudes old-world charm and opulence. Visitors can explore the mansions well-preserved interiors, including ornate ballrooms, imposing staircases, and antique furnishings, evoking a sense of nostalgia for a bygone era. The surrounding gardens, with their manicured lawns and exotic flora, provide a serene backdrop for leisurely strolls and picnics. Guided tours offer insights into the estate history and the lives of its former occupants, adding depth to the visitor experience. Richmond Castle stands as a testament to Sri Lankas rich cultural heritage and offers travelers a captivating journey through time, making it a must-visit destination in the Kalutara District.'),
];
  
  static get description => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'PLACE TO VISIT \n' ' Kalutara CITY',
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
                image: AssetImage('assets/images/Kalu.jpg'),
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