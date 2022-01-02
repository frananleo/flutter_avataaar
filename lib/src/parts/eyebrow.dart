import 'dart:convert';

import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';
import 'package:flutter_avataaar/src/parts/pieces.dart';

class Eyebrow implements AvataaarPart {
  EyebrowType eyebrowType;

  Eyebrow({
    required this.eyebrowType,
  });

  @override
  List get pieces => [eyebrowType];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Eyebrow && other.eyebrowType == eyebrowType;
  }

  @override
  int get hashCode => eyebrowType.hashCode;

  ///Get random [Eyebrow]
  static Eyebrow get random =>
      Eyebrow(eyebrowType: randomPiece(EyebrowType.values));

  Eyebrow copyWith({
    EyebrowType? eyebrowType,
  }) {
    return Eyebrow(
      eyebrowType: eyebrowType ?? this.eyebrowType,
    );
  }

  ///Tranform from [Eyebrow] to map
  factory Eyebrow.fromMap(Map<String, dynamic> map) {
    return Eyebrow(
      eyebrowType:
          Converter.enumFromJson(EyebrowType.values, map['eyebrowType']),
    );
  }

  ///Tranform to map from [Eyebrow]
  Map<String, dynamic> toMap() {
    return {'eyebrowType': Converter.enumToJson(eyebrowType)};
  }

  ///Encode to json
  String toJson() => json.encode(toMap());

  ///Decocode from json
  factory Eyebrow.fromJson(String source) =>
      Eyebrow.fromMap(json.decode(source));

  @override
  String toString() => 'Eyebrow(eyebrowType: $eyebrowType)';
}
