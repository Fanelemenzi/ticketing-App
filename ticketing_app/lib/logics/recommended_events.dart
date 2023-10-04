class RecommendedEvent {
  final String name;
  final String image;
  final int price;
  final String location;
  RecommendedEvent({
    required this.name,
    required this.image,
    required this.price,
    required this.location,
  });
}

List<RecommendedEvent> recommendedPlaces = [
  RecommendedEvent(
    name: "MTN Bushfire",
    image: "assets/events/bush.jpg",
    price: 300,
    location: "Malandela Lifestyle, Malkerns",
  ),
    RecommendedEvent(
    name: "Epic Gig",
    image: "assets/events/epic.jpeg",
    price: 23,
    location: "Mavuso Exhibition Centre",
  ),
  RecommendedEvent(
    name: "Luju Festival",
    image: "assets/events/luju.jpeg",
    price: 788,
    location: "Malandela Lifestyle",
  ),
  RecommendedEvent(
    name: "Swazi Rally",
    image: "assets/events/SR.jpg",
    price: 567,
    location: "Sidvokodvo",
  ),
  RecommendedEvent(
    name: "Farmers Market",
    image: "assets/events/Fm.jpg",
    price: 476,
    location: "Sibebe Resort",
  ),
];
