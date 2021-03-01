class CardModel {
  String name;
  String imageURL;
  String description;

  CardModel.fromJSON(Map<String, dynamic> json) {
    var images = json['card_images'][0];

    this.name = json['name'].toString();
    this.imageURL = images['image_url'].toString();
    this.description = json['desc'].toString();
  }

  CardModel(this.name, this.imageURL, this.description);
}
