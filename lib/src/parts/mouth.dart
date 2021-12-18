import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';
import 'package:flutter_avataaar/src/parts/pieces.dart';

class Mouth implements AvataaarPart {
  Mouth._({this.mouthType});

  MouthType? mouthType;

  @override
  List get pieces => [mouthType];

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Mouth && runtimeType == other.runtimeType && mouthType == other.mouthType;

  @override
  int get hashCode => mouthType.hashCode;

  static Mouth get concerned => Mouth._(mouthType: MouthType.concerned);

  static Mouth get defaultMouth => Mouth._(mouthType: MouthType.defaultType);

  static Mouth get disbelief => Mouth._(mouthType: MouthType.disbelief);

  static Mouth get eating => Mouth._(mouthType: MouthType.eating);

  static Mouth get grimace => Mouth._(mouthType: MouthType.grimace);

  static Mouth get sad => Mouth._(mouthType: MouthType.sad);

  static Mouth get screamOpen => Mouth._(mouthType: MouthType.screamOpen);

  static Mouth get serious => Mouth._(mouthType: MouthType.serious);

  static Mouth get smile => Mouth._(mouthType: MouthType.smile);

  static Mouth get tongue => Mouth._(mouthType: MouthType.tongue);

  static Mouth get twinkle => Mouth._(mouthType: MouthType.twinkle);

  static Mouth get vomit => Mouth._(mouthType: MouthType.vomit);

  static Mouth get random => Mouth._(mouthType: randomPiece(MouthType.values));
}

class MouthConverter extends Converter<Mouth> {
  @override
  Mouth fromMap(Map<String, dynamic> map) {
    return Mouth._(
      mouthType: enumFromJson(MouthType.values, map['mouthType']),
    );
  }

  @override
  Map<String, dynamic> toMap(Mouth value) {
    return {'mouthType': enumToJson(value.mouthType)};
  }
}
