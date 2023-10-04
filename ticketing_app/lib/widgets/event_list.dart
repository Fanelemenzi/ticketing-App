import 'package:flutter/material.dart';
import 'package:ticketing_app/logics/events.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ticketing_app/logics/tourist_details_page.dart';

class EventList extends StatelessWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(events.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 400,
            width: double.maxFinite,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all( Radius.circular(12)),
              ),

              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                          image: events[index].image,
                        ),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            events[index].image,
                            height: double.maxFinite,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
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
          ),
        );
      }),
    );
  }
}