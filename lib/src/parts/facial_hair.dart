import 'dart:convert';

import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';
import 'package:flutter_avataaar/src/parts/pieces.dart';

class FacialHair implements AvataaarPart {
  FacialHairType facialHairType;
  FacialHairColor facialHairColor;
  FacialHair({
    this.facialHairType = FacialHairType.blank,
    this.facialHairColor = FacialHairColor.auburn,
  });

  @override
  List get pieces => [facialHairType, facialHairColor];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FacialHair && other.facialHairType == facialHairType && other.facialHairColor == facialHairColor;
  }

  @override
  int get hashCode => facialHairType.hashCode ^ facialHairColor.hashCode;

  static FacialHair get random {
    return FacialHair(
      facialHairType: randomPiece(FacialHairType.values),
      facialHairColor: randomPiece(FacialHairColor.values),
    );
  }

  FacialHair copyWith({
    FacialHairType? facialHairType,
    FacialHairColor? facialHairColor,
  }) {
    return FacialHair(
      facialHairType: facialHairType ?? this.facialHairType,
      facialHairColor: facialHairColor ?? this.facialHairColor,
    );
  }

  ///Tranform from map to [FacialHairType]

  factory FacialHair.fromMap(Map<String, dynamic> map) {
    return FacialHair(
      facialHairType: Converter.enumFromJson<FacialHairType>(FacialHairType.values, map['facialHairType']),
      facialHairColor: Converter.enumFromJson<FacialHairColor>(FacialHairColor.values, map['facialHairColor']),
    );
  }

  ///Tranform from [FacialHairType] to map
  Map<String, dynamic> toMap() {
    return {
      'facialHairType': Converter.enumToJson(facialHairType),
      'facialHairColor': Converter.enumToJson(facialHairColor),
    };
  }

  ///Encode to json
  String toJson() => json.encode(toMap());

  ///Decode from json
  factory FacialHair.fromJson(String source) => FacialHair.fromMap(json.decode(source));

  @override
  String toString() => 'FacialHair(facialHairType: $facialHairType, facialHairColor: $facialHairColor)';
}
