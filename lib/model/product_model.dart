import 'dart:convert';

class Product {
  Product({
    this.status,
    this.message,
    this.data,
  });

  final bool? status;
  final String? message;
  final Data? data;

  // factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));
  //
  // String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    status: json["status"] == null ? null : json["status"],
    message: json["message"] == null ? null : json["message"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "message": message == null ? null : message,
    "data": data == null ? null : data!.toJson(),
  };
}

class Data {
  Data({
    this.settingData,
    this.category,
    this.banner,
    this.reviews,
    this.categoryWithProduct,
  });

  final SettingData? settingData;
  final List<Banner>? category;
  final List<Banner>? banner;
  final List<Review>? reviews;
  final List<Banner>? categoryWithProduct;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    settingData: json["settingData"] == null ? null : SettingData.fromJson(json["settingData"]),
    category: json["category"] == null ? null : List<Banner>.from(json["category"].map((x) => Banner.fromJson(x))),
    banner: json["banner"] == null ? null : List<Banner>.from(json["banner"].map((x) => Banner.fromJson(x))),
    reviews: json["reviews"] == null ? null : List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
    categoryWithProduct: json["categoryWithProduct"] == null ? null : List<Banner>.from(json["categoryWithProduct"].map((x) => Banner.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "settingData": settingData == null ? null : settingData!.toJson(),
    "category": category == null ? null : List<dynamic>.from(category!.map((x) => x.toJson())),
    "banner": banner == null ? null : List<dynamic>.from(banner!.map((x) => x.toJson())),
    "reviews": reviews == null ? null : List<dynamic>.from(reviews!.map((x) => x.toJson())),
    "categoryWithProduct": categoryWithProduct == null ? null : List<dynamic>.from(categoryWithProduct!.map((x) => x.toJson())),
  };
}

class Price {
  Price({
    this.id,
    this.productId,
    this.price,
    this.salePrice,
    this.unit,
    this.unitId,
    this.createdAt,
    this.updatedAt,
    this.units,
  });

  final int? id;
  final int? productId;
  final String? price;
  final String? salePrice;
  final String? unit;
  final int? unitId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Banner? units;

  factory Price.fromRawJson(String str) => Price.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Price.fromJson(Map<String, dynamic> json) => Price(
    id: json["id"] == null ? null : json["id"],
    productId: json["product_id"] == null ? null : json["product_id"],
    price: json["price"] == null ? null : json["price"],
    salePrice: json["sale_price"] == null ? null : json["sale_price"],
    unit: json["unit"] == null ? null : json["unit"],
    unitId: json["unit_id"] == null ? null : json["unit_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    units: json["units"] == null ? null : Banner.fromJson(json["units"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "product_id": productId == null ? null : productId,
    "price": price == null ? null : price,
    "sale_price": salePrice == null ? null : salePrice,
    "unit": unit == null ? null : unit,
    "unit_id": unitId == null ? null : unitId,
    "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
    "units": units == null ? null : units!.toJson(),
  };
}

class ProductElement {
  ProductElement({
    this.id,
    this.categoryId,
    this.stock,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.images,
    this.prices,
  });

  final int? id;
  final int? categoryId;
  final int? stock;
  final String? name;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<Banner>? images;
  final List<Price>? prices;

  factory ProductElement.fromRawJson(String str) => ProductElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
    id: json["id"] == null ? null : json["id"],
    categoryId: json["category_id"] == null ? null : json["category_id"],
    stock: json["stock"] == null ? null : json["stock"],
    name: json["name"] == null ? null : json["name"],
    description: json["description"] == null ? null : json["description"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    images: json["images"] == null ? null : List<Banner>.from(json["images"].map((x) => Banner.fromJson(x))),
    prices: json["prices"] == null ? null : List<Price>.from(json["prices"].map((x) => Price.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "category_id": categoryId == null ? null : categoryId,
    "stock": stock == null ? null : stock,
    "name": name == null ? null : name,
    "description": description == null ? null : description,
    "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
    "images": images == null ? null : List<dynamic>.from(images!.map((x) => x.toJson())),
    "prices": prices == null ? null : List<dynamic>.from(prices!.map((x) => x.toJson())),
  };
}

class Banner {
  Banner({
    this.id,
    this.image,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.products,
    this.productId,
  });

  final int? id;
  final String? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? title;
  final List<ProductElement>? products;
  final int? productId;

  factory Banner.fromRawJson(String str) => Banner.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
    id: json["id"] == null ? null : json["id"],
    image: json["image"] == null ? null : json["image"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    title: json["title"] == null ? null : json["title"],
    products: json["products"] == null ? null : List<ProductElement>.from(json["products"].map((x) => ProductElement.fromJson(x))),
    productId: json["product_id"] == null ? null : json["product_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "image": image == null ? null : image,
    "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
    "title": title == null ? null : title,
    "products": products == null ? null : List<dynamic>.from(products!.map((x) => x.toJson())),
    "product_id": productId == null ? null : productId,
  };
}

class Review {
  Review({
    this.id,
    this.userId,
    this.feacherd,
    this.orderId,
    this.rating,
    this.review,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  final int? id;
  final int? userId;
  final int? feacherd;
  final String? orderId;
  final int? rating;
  final String? review;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final User? user;

  factory Review.fromRawJson(String str) => Review.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Review.fromJson(Map<String, dynamic> json) => Review(
    id: json["id"] == null ? null : json["id"],
    userId: json["user_id"] == null ? null : json["user_id"],
    feacherd: json["feacherd"] == null ? null : json["feacherd"],
    orderId: json["order_id"] == null ? null : json["order_id"],
    rating: json["rating"] == null ? null : json["rating"],
    review: json["review"] == null ? null : json["review"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    user: json["user"] == null ? null : User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "user_id": userId == null ? null : userId,
    "feacherd": feacherd == null ? null : feacherd,
    "order_id": orderId == null ? null : orderId,
    "rating": rating == null ? null : rating,
    "review": review == null ? null : review,
    "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
    "user": user == null ? null : user!.toJson(),
  };
}

class User {
  User({
    this.id,
    this.identity,
    this.email,
    this.firstname,
    this.lastname,
    this.image,
    this.deviceToken,
    this.createdAt,
    this.updatedAt,
    this.deviceType,
    this.loginType,
  });

  final int? id;
  final String? identity;
  final String? email;
  final String? firstname;
  final String? lastname;
  final String? image;
  final String? deviceToken;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? deviceType;
  final String? loginType;

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"] == null ? null : json["id"],
    identity: json["identity"] == null ? null : json["identity"],
    email: json["email"] == null ? null : json["email"],
    firstname: json["firstname"] == null ? null : json["firstname"],
    lastname: json["lastname"] == null ? null : json["lastname"],
    image: json["image"] == null ? null : json["image"],
    deviceToken: json["device_token"] == null ? null : json["device_token"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deviceType: json["device_type"] == null ? null : json["device_type"],
    loginType: json["login_type"] == null ? null : json["login_type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "identity": identity == null ? null : identity,
    "email": email == null ? null : email,
    "firstname": firstname == null ? null : firstname,
    "lastname": lastname == null ? null : lastname,
    "image": image == null ? null : image,
    "device_token": deviceToken == null ? null : deviceToken,
    "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
    "device_type": deviceType == null ? null : deviceType,
    "login_type": loginType == null ? null : loginType,
  };
}

class SettingData {
  SettingData({
    this.id,
    this.shippingcharge,
    this.currencies,
    this.terms,
    this.privacyPolicy,
    this.number,
    this.email,
    this.about,
    this.contact,
    this.quantity,
    this.appName,
    this.instagram,
    this.twitter,
    this.facebook,
    this.linkedin,
    this.appstore,
    this.playstore,
    this.createdAt,
    this.updatedAt,
    this.shortDes,
    this.longDes,
    this.slogan,
  });

  final int? id;
  final String? shippingcharge;
  final String? currencies;
  final String? terms;
  final String? privacyPolicy;
  final String? number;
  final String? email;
  final String? about;
  final String? contact;
  final int? quantity;
  final String? appName;
  final String? instagram;
  final String? twitter;
  final String? facebook;
  final String? linkedin;
  final String? appstore;
  final String? playstore;
  final String? createdAt;
  final DateTime? updatedAt;
  final String? shortDes;
  final String? longDes;
  final String? slogan;

  factory SettingData.fromRawJson(String str) => SettingData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SettingData.fromJson(Map<String, dynamic> json) => SettingData(
    id: json["id"] == null ? null : json["id"],
    shippingcharge: json["shippingcharge"] == null ? null : json["shippingcharge"],
    currencies: json["currencies"] == null ? null : json["currencies"],
    terms: json["terms"] == null ? null : json["terms"],
    privacyPolicy: json["privacy_policy"] == null ? null : json["privacy_policy"],
    number: json["number"] == null ? null : json["number"],
    email: json["email"] == null ? null : json["email"],
    about: json["about"] == null ? null : json["about"],
    contact: json["contact"] == null ? null : json["contact"],
    quantity: json["quantity"] == null ? null : json["quantity"],
    appName: json["app_name"] == null ? null : json["app_name"],
    instagram: json["instagram"] == null ? null : json["instagram"],
    twitter: json["twitter"] == null ? null : json["twitter"],
    facebook: json["facebook"] == null ? null : json["facebook"],
    linkedin: json["linkedin"] == null ? null : json["linkedin"],
    appstore: json["appstore"] == null ? null : json["appstore"],
    playstore: json["playstore"] == null ? null : json["playstore"],
    createdAt: json["created_at"] == null ? null : json["playstore"],
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    shortDes: json["short_des"] == null ? null : json["short_des"],
    longDes: json["long_des"] == null ? null : json["long_des"],
    slogan: json["slogan"] == null ? null : json["slogan"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "shippingcharge": shippingcharge == null ? null : shippingcharge,
    "currencies": currencies == null ? null : currencies,
    "terms": terms == null ? null : terms,
    "privacy_policy": privacyPolicy == null ? null : privacyPolicy,
    "number": number == null ? null : number,
    "email": email == null ? null : email,
    "about": about == null ? null : about,
    "contact": contact == null ? null : contact,
    "quantity": quantity == null ? null : quantity,
    "app_name": appName == null ? null : appName,
    "instagram": instagram == null ? null : instagram,
    "twitter": twitter == null ? null : twitter,
    "facebook": facebook == null ? null : facebook,
    "linkedin": linkedin == null ? null : linkedin,
    "appstore": appstore == null ? null : appstore,
    "playstore": playstore == null ? null : playstore,
    "created_at": createdAt== null ? null :createdAt,
    "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
    "short_des": shortDes == null ? null : shortDes,
    "long_des": longDes == null ? null : longDes,
    "slogan": slogan == null ? null : slogan,
  };


}
