import 'package:apiaxelti53/model/api_model.dart';

class ApiModel {
  int? id;
  String? name;
  String? expansion;
  String? armyType;
  String? uniqueUnit;
  String? teamBonus;

  ApiModel({
    this.id,
    this.name,
    this.expansion,
    this.armyType,
    this.uniqueUnit,
    this.teamBonus,
  });

  factory ApiModel.fromJsonMap(Map<String, dynamic> data) => ApiModel(
        id: data['id'],
        name: data['name'],
        expansion: data['expansion'],
        armyType: data['armyType'],
        uniqueUnit: data['uniqueUnit'],
        teamBonus: data['teamBonus'],
      );
}
