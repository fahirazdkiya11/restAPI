import 'dart:convert';

class Produk {
  final int id;
  final String name;
  final String image;

  Produk({
    required this.id,
    required this.name,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
    };
  }

  factory Produk.fromMap(Map<String, dynamic> map) {
    return Produk(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Produk.fromJson(String source) => Produk.fromMap(jsonDecode(source));
}

void main() {
  String jsonString = '''
{
  "id": 1,
  "name": "Jay",
  "image": "https://i.pinimg.com/564x/fe/98/73/fe9873957549f5f5e61cac08239e0822.jpg"
}
''';

  final produk = Produk.fromJson(jsonString);

  print(produk.id);
}