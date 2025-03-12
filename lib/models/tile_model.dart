import 'package:virtual_exhibition_app/resources/app_assets.dart';

class TileModel {
  final String title;
  final String subtitle;
  final String year;
  final String image;
  final String rating;
  final String distance;
  final String temp;
  final String description;
  final String price;

  TileModel({
    required this.title,
    required this.subtitle,
    required this.year,
    required this.rating,
    required this.image,
    required this.distance,
    required this.temp,
    required this.description,
    required this.price,
  });
}

List<TileModel> tileModelList = [
  TileModel(
    title: "Michael Angelo's",
    subtitle: "May 23 - June 23",
    year: "1849-1851 by William Andrews Nesfield",
    rating: "4.2",
    image: AppAssets.kPicture1,
    distance: "7",
    temp: "28",
    price: "1270",
    description:
        "This is the shortest of three routes, but certainly not any less interesting. The North Wales way leads you in 120 Km from Abrgwygregyn to the beautiful island of Anglessey.",
  ),
  TileModel(
    title: "Flower Poetry #1",
    subtitle: "May 23 - June 23",
    year: "1849-1851 by William Andrews Nesfield",
    rating: "4.6",
    image: AppAssets.kPicture2,
    distance: "12",
    temp: "30",
    price: "1550",
    description:
        "A vibrant city known for its beaches, carnival, and the iconic Christ the Redeemer statue. Rio offers a mixture of rich cultural experiences, thrilling adventure sports, and scenic views.",
  ),
  TileModel(
    title: "Redeemer",
    subtitle: "Brazil, South America",
    year: "1849-1851 by William Andrews Nesfield",
    rating: "4.8",
    image: AppAssets.kPicture4,
    distance: "10",
    temp: "32",
    price: "1350",
    description:
        "The Christ the Redeemer statue, one of the New Seven Wonders of the World, stands on the Corcovado Mountain and overlooks Rio de Janeiro. It's a must-visit landmark.",
  ),
  TileModel(
    title: "Sugarloaf Mountain",
    subtitle: "Brazil, South America",
    year: "1849-1851 by William Andrews Nesfield",
    rating: "4.3",
    image: AppAssets.kPicture5,
    distance: "8",
    temp: "27",
    price: "1200",
    description:
        "Sugarloaf Mountain offers panoramic views of Rio de Janeiro. You can take a cable car to the top, providing stunning sights of the city, beaches, and bay.",
  ),
  TileModel(
    title: "Salvador",
    subtitle: "Brazil, South America",
    year: "1849-1851 by William Andrews Nesfield",
    rating: "4.5",
    image: AppAssets.kPicture3,
    distance: "15",
    temp: "29",
    price: "1450",
    description:
        "Salvador is a coastal city with a vibrant African influence, known for its colorful buildings, historic churches, and beautiful beaches. A place filled with culture and art.",
  ),
  TileModel(
    title: "Rainforest",
    subtitle: "Brazil, South America",
    year: "1849-1851 by William Andrews Nesfield",
    rating: "4.4",
    image: AppAssets.kPicture6,
    distance: "20",
    temp: "26",
    price: "1650",
    description:
        "Explore the Amazon Rainforest, home to the world's most diverse ecosystem. A trip to the rainforest offers an incredible experience of nature, wildlife, and adventure.",
  ),
];
