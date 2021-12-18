import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';
import 'package:flutter_avataaar/src/parts/pieces.dart';

class Clothes implements AvataaarPart {
  Clothes._({
    required this.clotheType,
    required this.clotheColor,
    required this.graphicType,
  });

  ClotheType clotheType;
  ClotheColor clotheColor;
  GraphicType graphicType;

  @override
  List get pieces => [clotheType, clotheColor, graphicType];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Clothes &&
          runtimeType == other.runtimeType &&
          clotheType == other.clotheType &&
          clotheColor == other.clotheColor &&
          graphicType == other.graphicType;

  @override
  int get hashCode => clotheType.hashCode ^ clotheColor.hashCode ^ graphicType.hashCode;

  static Clothes get blazerShirt => Clothes._(
        clotheType: ClotheType.blazerShirt,
        clotheColor: ClotheColor.black,
        graphicType: GraphicType.bat,
      );

  static Clothes get blazerSweater => Clothes._(
        clotheType: ClotheType.blazerSweater,
        clotheColor: ClotheColor.black,
        graphicType: GraphicType.bat,
      );

  static Clothes collarSweater(ClotheColor clotheColor) => Clothes._(
        clotheType: ClotheType.collarSweater,
        clotheColor: clotheColor,
        graphicType: GraphicType.bat,
      );

  static Clothes graphicShirt(ClotheColor clotheColor, GraphicType graphicType) => Clothes._(
        clotheType: ClotheType.graphicShirt,
        clotheColor: clotheColor,
        graphicType: graphicType,
      );

  static Clothes hoodie(ClotheColor clotheColor) => Clothes._(
        clotheType: ClotheType.hoodie,
        clotheColor: clotheColor,
        graphicType: GraphicType.bat,
      );

  static Clothes overall(ClotheColor clotheColor) => Clothes._(
        clotheType: ClotheType.overall,
        clotheColor: clotheColor,
        graphicType: GraphicType.bat,
      );

  static Clothes shirtCrewNeck(ClotheColor clotheColor) => Clothes._(
        clotheType: ClotheType.shirtCrewNeck,
        clotheColor: clotheColor,
        graphicType: GraphicType.bat,
      );

  static Clothes shirtScoopNeck(ClotheColor clotheColor) => Clothes._(
        clotheType: ClotheType.shirtScoopNeck,
        clotheColor: clotheColor,
        graphicType: GraphicType.bat,
      );

  static Clothes shirtVNeck(ClotheColor clotheColor) => Clothes._(
        clotheType: ClotheType.shirtVNeck,
        clotheColor: clotheColor,
        graphicType: GraphicType.bat,
      );

  static Clothes get random {
    final clotheType = randomPiece(ClotheType.values);
    final clotheColor = randomPiece(ClotheColor.values);
    final graphicType = randomPiece(GraphicType.values);
    switch (clotheType) {
      case ClotheType.blazerShirt:
        return blazerShirt;
      case ClotheType.blazerSweater:
        return blazerSweater;
      case ClotheType.collarSweater:
        return collarSweater(clotheColor);
      case ClotheType.graphicShirt:
        return graphicShirt(clotheColor, graphicType);
      case ClotheType.hoodie:
        return hoodie(clotheColor);
      case ClotheType.overall:
        return overall(clotheColor);
      case ClotheType.shirtCrewNeck:
        return shirtCrewNeck(clotheColor);
      case ClotheType.shirtScoopNeck:
        return shirtScoopNeck(clotheColor);
      case ClotheType.shirtVNeck:
        return shirtVNeck(clotheColor);
    }
  }
}

class ClothesConverter extends Converter<Clothes> {
  @override
  Clothes fromMap(Map<String, dynamic> map) {
    return Clothes._(
      clotheType: enumFromJson(ClotheType.values, map['clotheType']) ?? ClotheType.blazerShirt,
      clotheColor: enumFromJson(ClotheColor.values, map['clotheColor']) ?? ClotheColor.black,
      graphicType: enumFromJson(GraphicType.values, map['graphicType']) ?? GraphicType.bat,
    );
  }

  @override
  Map<String, dynamic> toMap(Clothes value) {
    return {
      'clotheType': enumToJson(value.clotheType),
      'clotheColor': enumToJson(value.clotheColor),
      'graphicType': enumToJson(value.graphicType),
    };
  }
}
