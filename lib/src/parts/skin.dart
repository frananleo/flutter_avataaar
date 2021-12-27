import 'dart:convert';

import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';
import 'package:flutter_avataaar/src/parts/pieces.dart';

class Skin implements AvataaarPart {
  SkinColor skinColor;

  Skin({
    required this.skinColor,
  });

  @override
  List get pieces => [skinColor];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Skin && other.skinColor == skinColor;
  }

  @override
  int get hashCode => skinColor.hashCode;

  static Skin get random => Skin(skinColor: randomPiece(SkinColor.values));

  Skin copyWith({
    SkinColor? skinColor,
  }) {
    return Skin(
      skinColor: skinColor ?? this.skinColor,
    );
  }

  factory Skin.fromMap(Map<String, dynamic> map) {
    return Skin(
      skinColor: Converter.enumFromJson(SkinColor.values, map['skinColor']),
    );
  }

  Map<String, dynamic> toMap() {
    return {'skinColor': Converter.enumToJson(skinColor)};
  }

  String toJson() => json.encode(toMap());

  factory Skin.fromJson(String source) => Skin.fromMap(json.decode(source));

  @override
  String toString() => 'Skin(skinColor: $skinColor)';
}
