class BannerData {
  final String image;
  final String headerText;
  final String footerText;
  final bool footerIcon;
  final List<double> padding;
  final List<double> margin;

  final double borderRadius;

  BannerData({
    required this.image,
    required this.headerText,
    required this.footerText,
    required this.footerIcon,
    required this.padding,
    required this.borderRadius,
    required this.margin,
  });

  factory BannerData.fromJson(Map<String, dynamic> json) {
    final List<dynamic> paddingJson = json['padding'];
    final List<double> padding = paddingJson.map((value) => double.parse(value.toString())).toList();
    final List<dynamic> marginJson = json['margin'];
    final List<double> margin = marginJson.map((value) => double.parse(value.toString())).toList();

    return BannerData(
      image: json['image'],
      headerText: json['header_text'],
      footerText: json['footer_text'],
      footerIcon: json['footer_icon'],
      padding: padding,
      margin: margin,
      borderRadius: json['border_radius'].toDouble(),
    );
  }
}