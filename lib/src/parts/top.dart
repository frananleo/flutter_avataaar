import 'dart:convert';

import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';
import 'package:flutter_avataaar/src/parts/pieces.dart';

class Top implements AvataaarPart {
  TopType topType;
  AccessoriesType accessoriesType;
  HatColor hatColor;
  HairColor hairColor;
  FacialHair facialHair;

  Top({
    required this.topType,
    this.accessoriesType = AccessoriesType.blank,
    this.hatColor = HatColor.black,
    this.hairColor = HairColor.black,
    required this.facialHair,
  });
  @override
  List get pieces => [
        topType,
        accessoriesType,
        hatColor,
        hairColor,
        ...facialHair.pieces,
      ];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Top &&
        other.topType == topType &&
        other.accessoriesType == accessoriesType &&
        other.hatColor == hatColor &&
        other.hairColor == hairColor &&
        other.facialHair == facialHair;
  }

  @override
  int get hashCode {
    return topType.hashCode ^ accessoriesType.hashCode ^ hatColor.hashCode ^ hairColor.hashCode ^ facialHair.hashCode;
  }

  static Top get random {
    return Top(
      topType: randomPiece(TopType.values),
      accessoriesType: randomPiece(AccessoriesType.values),
      hatColor: randomPiece(HatColor.values),
      hairColor: randomPiece(HairColor.values),
      facialHair: FacialHair.random,
    );
  }

  Top copyWith({
    TopType? topType,
    AccessoriesType? accessoriesType,
    HatColor? hatColor,
    HairColor? hairColor,
    FacialHair? facialHair,
  }) {
    return Top(
      topType: topType ?? this.topType,
      accessoriesType: accessoriesType ?? this.accessoriesType,
      hatColor: hatColor ?? this.hatColor,
      hairColor: hairColor ?? this.hairColor,
      facialHair: facialHair ?? this.facialHair,
    );
  }

  factory Top.fromMap(Map<String, dynamic> map) {
    return Top(
      topType: Converter.enumFromJson(TopType.values, map['topType'])!,
      accessoriesType: Converter.enumFromJson(AccessoriesType.values, map['accessoriesType']),
      hatColor: Converter.enumFromJson(HatColor.values, map['hatColor']),
      hairColor: Converter.enumFromJson(HairColor.values, map['hairColor']),
      facialHair: FacialHair.fromMap(map['facialHair']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'topType': Converter.enumToJson(topType),
      'accessoriesType': Converter.enumToJson(accessoriesType),
      'hatColor': Converter.enumToJson(hatColor),
      'hairColor': Converter.enumToJson(hairColor),
      'facialHair': facialHair.toMap(),
    };
  }

  String toJson() => json.encode(toMap());

  factory Top.fromJson(String source) => Top.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Top(topType: $topType, accessoriesType: $accessoriesType, hatColor: $hatColor, hairColor: $hairColor, facialHair: $facialHair)';
  }
}
