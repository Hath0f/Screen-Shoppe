class ProductDetailsModel {
  dynamic id, price, image,name, description, category, rating,sizes,inStock, reviews;

  ProductDetailsModel({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.category,
    required this.description,
    required this.rating,
    required this.reviews,
    required this.sizes,
    required this.inStock,
  });

  factory ProductDetailsModel.fromJson(Map<String, dynamic> product) {
    return ProductDetailsModel(
      id: product['id'],
      image:product['image'],
      reviews: product['reviews'],
      price: product['price'],
      name: product['name'],
      description: product['description'],
      category: product['category'],
      sizes: product['sizes'],
      inStock:product['inStock'],
      rating: product['rating'],
    );
  }

  ProductDetailsModel fromJson(Map<String, dynamic> json) {
    return ProductDetailsModel.fromJson(json);
  }

  factory ProductDetailsModel.init() {
    return ProductDetailsModel(
      id: '',
      price: '',
      name: '',
      category: '',
      reviews: '',
      description: '',
      rating: '',
      inStock:'',
      sizes:'',
      image: ''
    );
  }

  fromJsonList(List<dynamic> jsonList) {
    List<ProductDetailsModel> data = [];
    for (var post in jsonList) {
      data.add(ProductDetailsModel.fromJson(post));
    }
    return data;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'price': price,
        'name': name,
        'reviews': reviews,
        'category': category,
        'description': description,
        'image':image,
        'sizes':sizes,
        'inStock':inStock
      };
}
