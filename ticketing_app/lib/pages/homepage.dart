import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ticketing_app/pages/type_of_ticket.dart';
import 'package:ticketing_app/widgets/customicons.dart';


class homepage extends StatelessWidget {
  const homepage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hello Menzi Mabuza"),
            Text(
              "Where do you want to go today?",
              style: Theme.of(context).textTheme.labelMedium,
            )
          ],
        ),
        actions: const [
         CustomIconButton(
          icon: Icon(Ionicons.search_outline),
          ),
        Padding(
          padding: EdgeInsets.only(left:8.0, right:12),
          child: CustomIconButton(
            icon: Icon(Ionicons.notifications_outline)), 
        )
        ],
        ),
        //ticketing system
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children: [
            //Type of ticket
            const TicketType(),
            const SizedBox(height: 16,)
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.bookmark_outline),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ticket_outline),
            label: "Ticket",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: "Profile",
          )
        ],
      ),


      );
  }
}