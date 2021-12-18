import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';
import 'package:flutter_avataaar/src/parts/pieces.dart';

class Skin implements AvataaarPart {
  SkinColor? skinColor;

  Skin._({this.skinColor});

  @override
  List get pieces => [skinColor];

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Skin && runtimeType == other.runtimeType && skinColor == other.skinColor;

  @override
  int get hashCode => skinColor.hashCode;

  static Skin get tanned => Skin._(skinColor: SkinColor.tanned);

  static Skin get yellow => Skin._(skinColor: SkinColor.yellow);

  static Skin get pale => Skin._(skinColor: SkinColor.pale);

  static Skin get light => Skin._(skinColor: SkinColor.light);

  static Skin get brown => Skin._(skinColor: SkinColor.brown);

  static Skin get darkBrown => Skin._(skinColor: SkinColor.darkBrown);

  static Skin get black => Skin._(skinColor: SkinColor.black);

  static Skin get random => Skin._(skinColor: randomPiece(SkinColor.values));
}

class SkinConverter extends Converter<Skin> {
  @override
  Skin fromMap(Map<String, dynamic> map) {
    return Skin._(
      skinColor: enumFromJson(SkinColor.values, map['skinColor']),
    );
  }

  @override
  Map<String, dynamic> toMap(Skin value) {
    return {'skinColor': enumToJson(value.skinColor)};
  }
}
