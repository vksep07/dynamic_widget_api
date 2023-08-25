class HorizontalListItem {
  final String imageUrl;
  final String text;
  final String shape;

  HorizontalListItem({
    required this.imageUrl,
    required this.text,
    required this.shape,
  });

  factory HorizontalListItem.fromJson(Map<String, dynamic> json) {
    return HorizontalListItem(
      imageUrl: json['image_url'],
      text: json['text'],
      shape: json['shape'],
    );
  }
}
