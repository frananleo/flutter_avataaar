import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';
import 'package:flutter_avataaar/src/parts/pieces.dart';

class Eyes implements AvataaarPart {
  EyeType? eyeType;
  Eyes._({this.eyeType});

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Eyes && runtimeType == other.runtimeType && eyeType == other.eyeType;

  @override
  int get hashCode => eyeType.hashCode;

  @override
  List get pieces => [eyeType];

  static Eyes get close => Eyes._(eyeType: EyeType.close);

  static Eyes get cry => Eyes._(eyeType: EyeType.cry);

  static Eyes get defaultEyes => Eyes._(eyeType: EyeType.defaultType);

  static Eyes get dizzy => Eyes._(eyeType: EyeType.dizzy);

  static Eyes get eyeRoll => Eyes._(eyeType: EyeType.eyeRoll);

  static Eyes get happy => Eyes._(eyeType: EyeType.happy);

  static Eyes get hearts => Eyes._(eyeType: EyeType.hearts);

  static Eyes get side => Eyes._(eyeType: EyeType.side);

  static Eyes get squint => Eyes._(eyeType: EyeType.squint);

  static Eyes get surprised => Eyes._(eyeType: EyeType.surprised);

  static Eyes get wink => Eyes._(eyeType: EyeType.wink);

  static Eyes get winkWacky => Eyes._(eyeType: EyeType.winkWacky);

  static Eyes get random => Eyes._(eyeType: randomPiece(EyeType.values));
}

class EyesConverter extends Converter<Eyes> {
  @override
  Eyes fromMap(Map<String, dynamic> map) {
    return Eyes._(
      eyeType: enumFromJson(EyeType.values, map['eyeType']),
    );
  }

  @override
  Map<String, dynamic> toMap(Eyes value) {
    return {'eyeType': enumToJson(value.eyeType)};
  }
}
