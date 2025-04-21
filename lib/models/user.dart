class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isOnline,
  });
}

// YOU - current user
final User BacemBoukhatem = User(
  id: 0,
  name: 'Bacem Boukhatem',
  imageUrl: "assets/bacem.jpg",
  isOnline: false,
);

// USERS
final User WaelChemkhi = User(
  id: 1,
  name: 'Wael Chemkhi',
  imageUrl: 'assets/wael.jpg',
  isOnline: true,
);
final User Eyabenbrahim = User(
  id: 2,
  name: 'Eya ben brahrim',
  imageUrl: 'assets/eya.jpg',
  isOnline: false,
);
