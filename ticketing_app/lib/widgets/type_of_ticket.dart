import 'package:flutter/material.dart';

class TicketType extends StatelessWidget {
  const TicketType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 50,
            child: Chip(
              label: Text(ticketNames[index].name),
            avatar: CircleAvatar(
              backgroundImage: AssetImage(ticketNames[index].image),
            ),
              backgroundColor: Colors.white,
              elevation: 0.4,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
          );
        },
        separatorBuilder: (context, index) =>
            const Padding(padding: EdgeInsets.only(right: 5)),
        itemCount: ticketNames.length,
      ),
    );
      
  }
}

class TicketName {
  final String name;
  final String image;
  TicketName({
    required this.name,
    required this.image,
  });
}

List<TicketName> ticketNames = [
  TicketName(name: "Business Seminars", image: "assets/icons/business.png"),
  TicketName(name: "Comedy", image: "assets/icons/comedy.png"),
  TicketName(name: "Clubs", image: "assets/icons/disco.png"),
  TicketName(name: "House Gigs", image: "assets/icons/Dj.png"),
  TicketName(name: "Open Mic", image: "assets/icons/mic.jpg"),
  TicketName(name: "Gospel Festivals", image: "assets/icons/music.png"),
  TicketName(name: "Outdoor Festivals", image: "assets/icons/outdoor.png"),
];

