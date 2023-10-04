import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ticketing_app/logics/recommended_events.dart';
import 'package:ticketing_app/logics/tourist_details_page.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 220,
              child: Card(
                elevation: 0.4,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TouristDetailsPage(
                            image: recommendedPlaces[index].image,
                          ),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            recommendedPlaces[index].image,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                            height: 150,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: const [
                            Text(
                              "MTN BushFire",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "E",
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                            Text(
                              "400",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Ionicons.location,
                              color: Theme.of(context).primaryColor,
                              size: 16,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "Malandela Lifestyle",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(right: 10),
              ),
          itemCount: recommendedPlaces.length),
    );
  }
}

