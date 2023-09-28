import 'package:flutter/material.dart';

class TicketType extends StatelessWidget {
  const TicketType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 50, width: 40,
            child: Chip(
              label: Text(ticketNames[index].name),
              backgroundColor: Colors.white,
              elevation: 0.4,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            ),
          );
        },
        separatorBuilder: (context, index) =>
            const Padding(padding: EdgeInsets.only(right: 60)),
        itemCount: ticketNames.length,
      ),
    );
      
  }
}

class TicketName {
  final String name;

  TicketName({
    required this.name
  });
}

List<TicketName> ticketNames = [
  TicketName(name: "One Way", ),
  TicketName(name: "Round Trip",  ),
];
