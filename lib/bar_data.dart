///
/// Created By AURO (aurosmruti@smarttersstudio.com) on 8/20/2020 1:06 AM
///





import 'dart:convert';


class BarDatum {
  BarDatum({
    this.title,
    this.value,
  });

  String title;
  double value;

  factory BarDatum.fromJson(Map<String, dynamic> json) => BarDatum(
    title: json["title"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "value": value,
  };
}
