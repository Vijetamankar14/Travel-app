class DetailCardModel {
  final String title;
  final String image;
  final String rating;
  final String description;
  final String price;
  DetailCardModel({
    required this.title,
    required this.image,
    required this.rating,
    required this.description,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'image': image,
      'rating': rating,
      'description': description,
      'price': price,
    };
  }

  factory DetailCardModel.fromMap(Map<String, dynamic> map) {
    return DetailCardModel(
      title: map['title'] as String,
      image: map['image'] as String,
      rating: map['rating'] as String,
      description: map['description'] as String,
      price: map['price'] as String,
    );
  }
}


  
  