
class ThemeDataModel {
  final String theme;

  ThemeDataModel({
    required this.theme,
  });

  factory ThemeDataModel.fromJson(Map<String, dynamic> json) {
    return ThemeDataModel(
      theme: json['theme'],
    );
  }
}
