import 'package:dynamic_widget_assignment/home/network/model/horizontal_list_item_model.dart';

class DynamicHorizontalListData {
  final String title;
  final List<HorizontalListItem> items;

  DynamicHorizontalListData({
    required this.title,
    required this.items,
  });

  factory DynamicHorizontalListData.fromJson(Map<String, dynamic> json) {
    final List<dynamic> itemsJson = json['items'];
    final List<HorizontalListItem> items =
    itemsJson.map((item) => HorizontalListItem.fromJson(item)).toList();

    return DynamicHorizontalListData(
      title: json['title'],
      items: items,
    );
  }
}
