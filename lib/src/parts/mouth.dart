import 'dart:convert';

import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';
import 'package:flutter_avataaar/src/parts/pieces.dart';

class Mouth implements AvataaarPart {
  MouthType mouthType;

  Mouth({
    required this.mouthType,
  });

  @override
  List get pieces => [mouthType];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Mouth && other.mouthType == mouthType;
  }

  @override
  int get hashCode => mouthType.hashCode;

  static Mouth get random => Mouth(mouthType: randomPiece(MouthType.values));

  Mouth copyWith({
    MouthType? mouthType,
  }) {
    return Mouth(
      mouthType: mouthType ?? this.mouthType,
    );
  }

  factory Mouth.fromMap(Map<String, dynamic> map) {
    return Mouth(
      mouthType: Converter.enumFromJson(MouthType.values, map['mouthType']),
    );
  }

  Map<String, dynamic> toMap() {
    return {'mouthType': Converter.enumToJson(mouthType)};
  }

  String toJson() => json.encode(toMap());

  factory Mouth.fromJson(String source) => Mouth.fromMap(json.decode(source));

  @override
  String toString() => 'Mouth(mouthType: $mouthType)';
}
