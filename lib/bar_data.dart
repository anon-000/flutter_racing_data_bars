///
/// Created By AURO (aurosmruti@smarttersstudio.com) on 8/20/2020 1:06 AM
///





import 'dart:convert';


class BarDatum {
  BarDatum({
    this.title,
    this.value,
    this.description,
  });

  String title;
  String description;
  double value;

  factory BarDatum.fromJson(Map<String, dynamic> json) => BarDatum(
    title: json["title"],
    value: json["value"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "value": value,
    "description":description,
  };
}
