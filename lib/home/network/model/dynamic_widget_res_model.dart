// To parse this JSON data, do
//
//     final dynamicWidgetModel = dynamicWidgetModelFromJson(jsonString);

import 'dart:convert';

DynamicWidgetModel dynamicWidgetModelFromJson(String str) => DynamicWidgetModel.fromJson(json.decode(str));

String dynamicWidgetModelToJson(DynamicWidgetModel data) => json.encode(data.toJson());

class DynamicWidgetModel {
  AppTheme? appTheme;
  dynamic widgets;

  DynamicWidgetModel({
    this.appTheme,
    this.widgets,
  });

 factory DynamicWidgetModel.fromJson(Map<String, dynamic> json) => DynamicWidgetModel(
    appTheme: json["app_theme"] == null ? null : AppTheme.fromJson(json["app_theme"]),
    widgets: json["widgets"],
  );

  Map<String, dynamic> toJson() => {
    "app_theme": appTheme?.toJson(),
    "widgets": widgets,
  };
}

class AppTheme {
  String? type;
  AppThemeProperties? properties;

  AppTheme({
    this.type,
    this.properties,
  });

  factory AppTheme.fromJson(Map<String, dynamic> json) => AppTheme(
    type: json["theme"],
    properties: json["properties"] == null ? null : AppThemeProperties.fromJson(json["properties"]),
  );

  Map<String, dynamic> toJson() => {
    "theme": type,
    "properties": properties?.toJson(),
  };
}

class AppThemeProperties {
  String? theme;

  AppThemeProperties({
    this.theme,
  });

  factory AppThemeProperties.fromJson(Map<String, dynamic> json) => AppThemeProperties(
    theme: json["theme"],
  );

  Map<String, dynamic> toJson() => {
    "theme": theme,
  };
}

class WidgetApiDataModel {
  String? type;
  Map<String, dynamic>? properties;

  WidgetApiDataModel({
    this.type,
    this.properties,
  });

  factory WidgetApiDataModel.fromJson(Map<String, dynamic> json) => WidgetApiDataModel(
    type: json["type"],
    properties: json["properties"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "properties": properties,
  };
}

