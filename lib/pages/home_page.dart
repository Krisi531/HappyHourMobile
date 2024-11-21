import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/popular_and_suggested_places.dart';
import 'package:flutter_application_1/widgets/popular_places_now.dart';
import 'package:flutter_application_1/widgets/search_box_home_page.dart';
import 'package:flutter_application_1/widgets/suggested_places_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SearchBoxHomePage(),
        const Text(
          'Suggested places for you',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 270,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: nearbyBars.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: GestureDetector(
                    onTap: () {
                      print(
                          'Tapped on nearby bar/restaurant: ${nearbyBars[index]['name']}');
                    },
                    child: SuggestedPlace(
                        name: nearbyBars[index]['name']!,
                        image: nearbyBars[index]['image']!,
                        address: nearbyBars[index]['address']!)),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Popular places now',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.filter_list,
                      color: Colors.white, size: 20),
                  onPressed: () {
                    print('Filter clicked');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.sort, color: Colors.white, size: 20),
                  onPressed: () {
                    print('Sort clicked');
                  },
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: popularBars.map((bar) {
            return PopularPlaceNow(
                name: bar['name']!,
                image: bar['image']!,
                rating: bar['rating']!);
          }).toList(),
        ),
      ],
    );
  }
}
