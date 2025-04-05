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
    title: "The Creation of Adam",
    subtitle: "Vatican City, Italy",
    year: "1512 by Michelangelo",
    rating: "4.9",
    image: AppAssets.kPicture1,
    distance: "5",
    temp: "25",
    price: "3200",
    description:
        "Painted on the ceiling of the Sistine Chapel, this masterpiece by Michelangelo illustrates the biblical creation narrative where God gives life to Adam. It remains one of the most iconic artworks of the Renaissance.",
  ),
  TileModel(
    title: "Flower Poetry #1",
    subtitle: "Paris, France",
    year: "1872 by Claude Monet",
    rating: "4.6",
    image: AppAssets.kPicture2,
    distance: "12",
    temp: "22",
    price: "1550",
    description:
        "Inspired by Monet's impressionist style, this floral piece captures the delicacy of blooming nature with poetic charm. It’s a gentle homage to light, color, and feeling.",
  ),
  TileModel(
    title: "Christ the Redeemer",
    subtitle: "Rio de Janeiro, Brazil",
    year: "1931 by Paul Landowski",
    rating: "4.8",
    image: AppAssets.kPicture4,
    distance: "10",
    temp: "32",
    price: "1350",
    description:
        "An iconic symbol of Brazil, this massive Art Deco statue stands tall on Corcovado Mountain, offering breathtaking views over Rio de Janeiro. A must-visit landmark and a spiritual monument.",
  ),
  TileModel(
    title: "Floral Still Life",
    subtitle: "Amsterdam, Netherlands",
    year: "1614 by Ambrosius Bosschaert",
    rating: "4.3",
    image: AppAssets.kPicture5,
    distance: "8",
    temp: "19",
    price: "1200",
    description:
        "A stunning representation of 17th-century Dutch still life. Bosschaert’s detailed floral compositions are rich with symbolism and showcase exquisite botanical realism.",
  ),
  TileModel(
    title: "The Scream",
    subtitle: "Oslo, Norway",
    year: "1893 by Edvard Munch",
    rating: "4.8",
    image: AppAssets.kPicture6, 
    distance: "2",
    temp: "12",
    price: "2500",
    description:
        "One of the most iconic paintings in art history, 'The Scream' captures a figure in anguish against a tumultuous sky. It’s housed at the National Gallery in Oslo, attracting art lovers from around the world.",
  ),
  TileModel(
    title: "The Kiss",
    subtitle: "Vienna, Austria",
    year: "1907–1908 by Gustav Klimt",
    rating: "4.9",
    image: AppAssets.kPicture7, 
    distance: "3",
    temp: "18",
    price: "3000",
    description:
        "'The Kiss' is Gustav Klimt’s most famous work, celebrated for its golden hues and romantic intimacy. It’s housed in the Belvedere Museum in Vienna and is considered a masterpiece of the Art Nouveau period.",
  )
];
