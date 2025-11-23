import 'package:flutter/material.dart';

class CarsApp extends StatelessWidget {
  const CarsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarDetailsPage(
        image: "assets/BMW.jpg",
        name: "BMW M4 Competition",
        price: "1000 \$ / day",
        description:
            "The BMW M4 Competition is a high-performance sports car that combines power,"
            " precision, and luxury. "
            "It features a twin-turbocharged inline-six engine producing 503 horsepower,"
            " allowing it to accelerate from 0 to 60 mph in just 3.8 seconds."
            " The car boasts an adaptive M suspension, M Servotronic steering,"
            " and an advanced all-wheel-drive system for exceptional handling and control. "
            "Inside, the M4 Competition offers a driver-focused cockpit with premium materials,"
            " advanced technology, and comfortable seating. Whether on the track or the road, "
            "the BMW M4 Competition delivers an exhilarating driving experience.",
      ),
    );
  }
}

class CarDetailsPage extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String description;

  const CarDetailsPage({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          // Car image
          Positioned.fill(
            child: Hero(
              tag: image,
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),

          // Content below image
          DraggableScrollableSheet(
            initialChildSize: 0.55,
            minChildSize: 0.20,
            maxChildSize: 0.9,
            builder: (context, scrollController) {
              return Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                ),
                child: ListView(
                  controller: scrollController,
                  children: [
                    // Car name + price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),

                    // Specs
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        _SpecItem(
                          icon: Icons.speed,
                          title: "Max Speed",
                          value: "240 km/h",
                        ),
                        _SpecItem(
                          icon: Icons.local_gas_station,
                          title: "Fuel",
                          value: "Petrol",
                        ),
                        _SpecItem(
                          icon: Icons.settings,
                          title: "Gear",
                          value: "Auto",
                        ),
                      ],
                    ),

                    const SizedBox(height: 25),

                    // Description
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              );
            },
          ),

          // Back button
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
          ),
        ],
      ),

      // Bottom button
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(18),
        height: 85,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            padding: const EdgeInsets.symmetric(vertical: 18),
          ),
          onPressed: () {},
          child: const Text("Book Now", style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}

class _SpecItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _SpecItem({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 32, color: Colors.blue),
        const SizedBox(height: 6),
        Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
