
class Goods {
  String brand;
  String model;
  String type;
  String img;
  String price;
  String description;

  Goods(
      {this.brand,
        this.model,
        this.type,
        this.img,
        this.price,
        this.description});

  Goods.fromJson(Map<String, dynamic> json) {
    brand = json['brand'];
    model = json['model'];
    type = json['type'];
    img = json['img'];
    price = json['price'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brand'] = this.brand;
    data['model'] = this.model;
    data['type'] = this.type;
    data['img'] = this.img;
    data['price'] = this.price;
    data['description'] = this.description;
    return data;
  }
}