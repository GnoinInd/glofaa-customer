// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'dart:convert';

CategoryModel categoryModelFromJson(String str) => CategoryModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

class CategoryModel {
  bool? success;
  List<Category>? categories;

  CategoryModel({
    this.success,
    this.categories,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    success: json["success"],
    categories: json["categories"] == null ? [] : List<Category>.from(json["categories"]!.map((x) => Category.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x.toJson())),
  };
}

class Category {
  Image? image;
  bool? status;
  String? id;
  String? name;
  Subtitle? subtitle;
  Subtitle? video;
  DateTime? createdAt;
  int? v;

  Category({
    this.image,
    this.status,
    this.id,
    this.name,
    this.subtitle,
    this.video,
    this.createdAt,
    this.v,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    image: json["image"] == null ? null : Image.fromJson(json["image"]),
    status: json["status"],
    id: json["_id"],
    name: json["name"],
    subtitle: subtitleValues.map[json["subtitle"]]!,
    video: subtitleValues.map[json["video"]]!,
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "image": image?.toJson(),
    "status": status,
    "_id": id,
    "name": name,
    "subtitle": subtitleValues.reverse[subtitle],
    "video": subtitleValues.reverse[video],
    "createdAt": createdAt?.toIso8601String(),
    "__v": v,
  };
}

class Image {
  String? publicId;
  String? url;

  Image({
    this.publicId,
    this.url,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    publicId: json["public_id"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "public_id": publicId,
    "url": url,
  };
}

enum Subtitle {
  NAN,
  NO
}

final subtitleValues = EnumValues({
  "NAN": Subtitle.NAN,
  "no": Subtitle.NO
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
