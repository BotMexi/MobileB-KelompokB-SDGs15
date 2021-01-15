import 'dart:convert';

class Gajah {
  // final String _id;
  final image;
  final String species;
  final String wikilink;
  final String name;

  Gajah({
    this.image,
    this.name,
    this.species,
    this.wikilink,
  });

  factory Gajah.fromJson(Map<String, dynamic> json) {
    return Gajah(
      image: json['image'],
      name: json['name'],
      species: json['species'],
      wikilink: json['wikilink'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "image": image,
      "name": name,
      "species": species,
      "wikilink": wikilink,
    };
  }

  @override
  String toString() {
    return 'Gajah{species: $species, wikilink: $wikilink, name:$name, image:$image}';
  }
}

List<Gajah> gajahFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Gajah>.from(data.map((item) => Gajah.fromJson(item)));
}

String gajahToJson(Gajah data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}
