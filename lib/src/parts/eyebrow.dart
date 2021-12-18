import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';
import 'package:flutter_avataaar/src/parts/pieces.dart';

class Eyebrow implements AvataaarPart {
  Eyebrow._({this.eyebrowType});

  EyebrowType? eyebrowType;

  @override
  List get pieces => [eyebrowType];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Eyebrow && runtimeType == other.runtimeType && eyebrowType == other.eyebrowType;

  @override
  int get hashCode => eyebrowType.hashCode;

  static Eyebrow get angry => Eyebrow._(eyebrowType: EyebrowType.angry);

  static Eyebrow get angryNatural => Eyebrow._(eyebrowType: EyebrowType.angryNatural);

  static Eyebrow get defaultEyebrow => Eyebrow._(eyebrowType: EyebrowType.defaultType);

  static Eyebrow get defaultNatural => Eyebrow._(eyebrowType: EyebrowType.defaultNatural);

  static Eyebrow get flatNatural => Eyebrow._(eyebrowType: EyebrowType.flatNatural);

  static Eyebrow get raisedExcited => Eyebrow._(eyebrowType: EyebrowType.raisedExcited);

  static Eyebrow get raisedExcitedNatural => Eyebrow._(eyebrowType: EyebrowType.raisedExcitedNatural);

  static Eyebrow get sadConcerned => Eyebrow._(eyebrowType: EyebrowType.sadConcerned);

  static Eyebrow get sadConcernedNatural => Eyebrow._(eyebrowType: EyebrowType.sadConcernedNatural);

  static Eyebrow get unibrowNatural => Eyebrow._(eyebrowType: EyebrowType.unibrowNatural);

  static Eyebrow get upDown => Eyebrow._(eyebrowType: EyebrowType.upDown);

  static Eyebrow get upDownNatural => Eyebrow._(eyebrowType: EyebrowType.upDownNatural);

  static Eyebrow get random => Eyebrow._(eyebrowType: randomPiece(EyebrowType.values));
}

class EyebrowConverter extends Converter<Eyebrow> {
  @override
  Eyebrow fromMap(Map<String, dynamic> map) {
    return Eyebrow._(
      eyebrowType: enumFromJson(EyebrowType.values, map['eyebrowType']),
    );
  }

  @override
  Map<String, dynamic> toMap(Eyebrow value) {
    return {'eyebrowType': enumToJson(value.eyebrowType)};
  }
}
