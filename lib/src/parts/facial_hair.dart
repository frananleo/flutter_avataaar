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

  static FacialHair get blank => FacialHair(facialHairType: FacialHairType.blank);

  static FacialHair beardMedium({required FacialHairColor facialHairColor}) => FacialHair(
        facialHairType: FacialHairType.beardMedium,
        facialHairColor: facialHairColor,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FacialHair &&
          runtimeType == other.runtimeType &&
          facialHairType == other.facialHairType &&
          facialHairColor == other.facialHairColor;

  @override
  int get hashCode => facialHairType.hashCode ^ facialHairColor.hashCode;

  static FacialHair beardLight({required FacialHairColor facialHairColor}) =>
      FacialHair(facialHairType: FacialHairType.beardLight, facialHairColor: facialHairColor);

  static FacialHair beardMagestic({required FacialHairColor facialHairColor}) =>
      FacialHair(facialHairType: FacialHairType.beardMagestic, facialHairColor: facialHairColor);

  static FacialHair moustacheFancy({required FacialHairColor facialHairColor}) =>
      FacialHair(facialHairType: FacialHairType.moustacheFancy, facialHairColor: facialHairColor);

  static FacialHair moustacheMagnum({required FacialHairColor facialHairColor}) =>
      FacialHair(facialHairType: FacialHairType.moustacheMagnum, facialHairColor: facialHairColor);

  static FacialHair get random {
    final facialHairType = randomPiece(FacialHairType.values);
    final facialHairColor = randomPiece(FacialHairColor.values);
    switch (facialHairType) {
      case FacialHairType.blank:
        return blank;
      case FacialHairType.beardMedium:
        return beardMedium(facialHairColor: facialHairColor);
      case FacialHairType.beardLight:
        return beardLight(facialHairColor: facialHairColor);
      case FacialHairType.beardMagestic:
        return beardMagestic(facialHairColor: facialHairColor);
      case FacialHairType.moustacheFancy:
        return moustacheFancy(facialHairColor: facialHairColor);
      case FacialHairType.moustacheMagnum:
        return moustacheMagnum(facialHairColor: facialHairColor);
    }
  }
}

class FacialHairConverter extends Converter<FacialHair> {
  @override
  FacialHair fromMap(Map<String, dynamic> map) {
    return FacialHair(
      facialHairType: enumFromJson(FacialHairType.values, map['facialHairType']) ?? FacialHairType.blank,
      facialHairColor: enumFromJson(FacialHairColor.values, map['facialHairColor']) ?? FacialHairColor.auburn,
    );
  }

  @override
  Map<String, dynamic> toMap(FacialHair value) {
    return {
      'facialHairType': enumToJson(value.facialHairType),
      'facialHairColor': enumToJson(value.facialHairColor),
    };
  }
}
