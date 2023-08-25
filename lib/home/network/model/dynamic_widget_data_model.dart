class DynamicWidgetData {
  final String type;
  final dynamic properties;

  DynamicWidgetData({
    required this.type,
    required this.properties,
  });

  factory DynamicWidgetData.fromJson(Map<String, dynamic> json) {
    return DynamicWidgetData(
      type: json['type'],
      properties: json['properties'],
    );
  }
}