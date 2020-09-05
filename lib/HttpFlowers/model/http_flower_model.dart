class HttpFlowerModel {
  String description;
  String imageUrl;

  HttpFlowerModel({this.description, this.imageUrl});

  HttpFlowerModel.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}
