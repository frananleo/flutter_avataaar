import 'dart:convert';

import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';
import 'package:flutter_avataaar/src/parts/pieces.dart';

class Clothes implements AvataaarPart {
  ClotheType clotheType;
  ClotheColor clotheColor;
  GraphicType graphicType;
  Clothes({
    required this.clotheType,
    required this.clotheColor,
    required this.graphicType,
  });

  @override
  List get pieces => [clotheType, clotheColor, graphicType];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Clothes &&
        other.clotheType == clotheType &&
        other.clotheColor == clotheColor &&
        other.graphicType == graphicType;
  }

  @override
  int get hashCode => clotheType.hashCode ^ clotheColor.hashCode ^ graphicType.hashCode;

  Clothes copyWith({
    ClotheType? clotheType,
    ClotheColor? clotheColor,
    GraphicType? graphicType,
  }) {
    return Clothes(
      clotheType: clotheType ?? this.clotheType,
      clotheColor: clotheColor ?? this.clotheColor,
      graphicType: graphicType ?? this.graphicType,
    );
  }

// get a random Clothes from list
  static Clothes get random {
    return Clothes(
      clotheType: randomPiece(ClotheType.values),
      clotheColor: randomPiece(ClotheColor.values),
      graphicType: randomPiece(GraphicType.values),
    );
  }

  factory Clothes.fromMap(Map<String, dynamic> map) {
    return Clothes(
      clotheType: Converter.enumFromJson(ClotheType.values, map['clotheType']),
      clotheColor: Converter.enumFromJson(ClotheColor.values, map['clotheColor']),
      graphicType: Converter.enumFromJson(GraphicType.values, map['graphicType']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'clotheType': Converter.enumToJson(clotheType),
      'clotheColor': Converter.enumToJson(clotheColor),
      'graphicType': Converter.enumToJson(graphicType),
    };
  }

  String toJson() => json.encode(toMap());

  factory Clothes.fromJson(String source) => Clothes.fromMap(json.decode(source));

  @override
  String toString() => 'Clothes(clotheType: $clotheType, clotheColor: $clotheColor, graphicType: $graphicType)';
}
