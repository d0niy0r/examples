class Lesson3Model {
  final int? id;
  final String? title;
  final num? price;
  final String? description;
  final String? category;
  final String? image;

  Lesson3Model({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    required this.category,
    required this.description,
  });

  factory Lesson3Model.fromJson(Map<String, dynamic> json) => Lesson3Model(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        image: json["image"],
        category: json["category"],
        description: json["description"],
      );
}
