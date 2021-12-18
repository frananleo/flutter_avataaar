import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';
import 'package:flutter_avataaar/src/parts/pieces.dart';

class Top implements AvataaarPart {
  TopType topType;
  AccessoriesType accessoriesType;
  HatColor hatColor;
  HairColor hairColor;
  FacialHair facialHair;

  Top._({
    required this.topType,
    required this.facialHair,
    this.accessoriesType = AccessoriesType.blank,
    this.hatColor = HatColor.black,
    this.hairColor = HairColor.black,
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Top &&
          runtimeType == other.runtimeType &&
          topType == other.topType &&
          accessoriesType == other.accessoriesType &&
          hatColor == other.hatColor &&
          hairColor == other.hairColor &&
          facialHair == other.facialHair;

  @override
  int get hashCode =>
      topType.hashCode ^ accessoriesType.hashCode ^ hatColor.hashCode ^ hairColor.hashCode ^ facialHair.hashCode;

  static Top noHair({
    AccessoriesType? accessoriesType,
    FacialHair? facialHair,
  }) =>
      Top._(
        topType: TopType.noHair,
        accessoriesType: accessoriesType ?? AccessoriesType.blank,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top eyepatch({
    AccessoriesType? accessoriesType,
    FacialHair? facialHair,
  }) =>
      Top._(
        topType: TopType.eyepatch,
        accessoriesType: accessoriesType ?? AccessoriesType.blank,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top hat({AccessoriesType accessoriesType = AccessoriesType.blank, FacialHair? facialHair}) => Top._(
        topType: TopType.hat,
        accessoriesType: accessoriesType,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top hijab({AccessoriesType accessoriesType = AccessoriesType.blank, HatColor hatColor = HatColor.black}) =>
      Top._(
        topType: TopType.hijab,
        accessoriesType: accessoriesType,
        hatColor: hatColor,
        facialHair: FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top turban(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HatColor hatColor = HatColor.black,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.turban,
        accessoriesType: accessoriesType,
        hatColor: hatColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top winterHat1(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HatColor hatColor = HatColor.black,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.winterHat1,
        accessoriesType: accessoriesType,
        hatColor: hatColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top winterHat2(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HatColor hatColor = HatColor.black,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.winterHat2,
        accessoriesType: accessoriesType,
        hatColor: hatColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top winterHat3(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HatColor hatColor = HatColor.black,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.winterHat3,
        accessoriesType: accessoriesType,
        hatColor: hatColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top winterHat4(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HatColor hatColor = HatColor.black,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.winterHat4,
        accessoriesType: accessoriesType,
        hatColor: hatColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top longHairBigHair(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.longHairBigHair,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top longHairBob(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.longHairBob,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top longHairBun(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.longHairBun,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top longHairCurly(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.longHairCurly,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top longHairCurvy(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.longHairCurvy,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top longHairDreads(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.longHairDreads,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top longHairFrida({AccessoriesType accessoriesType = AccessoriesType.blank, FacialHair? facialHair}) => Top._(
        topType: TopType.longHairFrida,
        accessoriesType: accessoriesType,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top longHairFro(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.longHairFro,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top longHairFroBand(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.longHairFroBand,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top longHairNotTooLong(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.longHairNotTooLong,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top longHairShavedSides({AccessoriesType accessoriesType = AccessoriesType.blank, FacialHair? facialHair}) =>
      Top._(
        topType: TopType.longHairShavedSides,
        accessoriesType: accessoriesType,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top longHairMiaWallace(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.longHairMiaWallace,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top longHairStraight(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.longHairStraight,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top longHairStraight2(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.longHairStraight2,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top longHairStraightStrand(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.longHairStraightStrand,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top shortHairDreads01(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.shortHairDreads01,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top shortHairDreads02(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.shortHairDreads02,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top shortHairFrizzle(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.shortHairFrizzle,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top shortHairShaggyMullet(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.shortHairShaggyMullet,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top shortHairShortCurly(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.shortHairShortCurly,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top shortHairShortFlat(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.shortHairShortFlat,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top shortHairShortRound(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.shortHairShortRound,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top shortHairShortWaved(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.shortHairShortWaved,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top shortHairSides(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.shortHairSides,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top shortHairTheCaesar(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.shortHairTheCaesar,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top shortHairTheCaesarSidePart(
          {AccessoriesType accessoriesType = AccessoriesType.blank,
          HairColor hairColor = HairColor.auburn,
          FacialHair? facialHair}) =>
      Top._(
        topType: TopType.shortHairTheCaesarSidePart,
        accessoriesType: accessoriesType,
        hairColor: hairColor,
        facialHair: facialHair ?? FacialHair(facialHairType: FacialHairType.blank),
      );

  static Top get random {
    final topType = randomPiece(TopType.values);
    final accessoriesType = randomPiece(AccessoriesType.values);
    final hatColor = randomPiece(HatColor.values);
    final hairColor = randomPiece(HairColor.values);
    final facialHair = FacialHair.random;
    switch (topType) {
      case TopType.noHair:
        return noHair(accessoriesType: accessoriesType, facialHair: facialHair);
      case TopType.eyepatch:
        return eyepatch(accessoriesType: accessoriesType, facialHair: facialHair);
      case TopType.hat:
        return hat(accessoriesType: accessoriesType, facialHair: facialHair);
      case TopType.hijab:
        return hijab(accessoriesType: accessoriesType, hatColor: hatColor);
      case TopType.turban:
        return turban(accessoriesType: accessoriesType, hatColor: hatColor, facialHair: facialHair);
      case TopType.winterHat1:
        return winterHat1(accessoriesType: accessoriesType, hatColor: hatColor, facialHair: facialHair);
      case TopType.winterHat2:
        return winterHat2(accessoriesType: accessoriesType, hatColor: hatColor, facialHair: facialHair);
      case TopType.winterHat3:
        return winterHat3(accessoriesType: accessoriesType, hatColor: hatColor, facialHair: facialHair);
      case TopType.winterHat4:
        return winterHat4(accessoriesType: accessoriesType, hatColor: hatColor, facialHair: facialHair);
      case TopType.longHairBigHair:
        return longHairBigHair(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.longHairBob:
        return longHairBob(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.longHairBun:
        return longHairBun(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.longHairCurly:
        return longHairCurly(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.longHairCurvy:
        return longHairCurvy(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.longHairDreads:
        return longHairDreads(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.longHairFrida:
        return longHairFrida(accessoriesType: accessoriesType, facialHair: facialHair);
      case TopType.longHairFro:
        return longHairFro(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.longHairFroBand:
        return longHairFroBand(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.longHairNotTooLong:
        return longHairNotTooLong(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.longHairShavedSides:
        return longHairShavedSides(accessoriesType: accessoriesType, facialHair: facialHair);
      case TopType.longHairMiaWallace:
        return longHairMiaWallace(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.longHairStraight:
        return longHairStraight(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.longHairStraight2:
        return longHairStraight2(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.longHairStraightStrand:
        return longHairStraightStrand(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.shortHairDreads01:
        return shortHairDreads01(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.shortHairDreads02:
        return shortHairDreads02(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.shortHairFrizzle:
        return shortHairFrizzle(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.shortHairShaggyMullet:
        return shortHairShaggyMullet(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.shortHairShortCurly:
        return shortHairShortCurly(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.shortHairShortFlat:
        return shortHairShortFlat(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.shortHairShortRound:
        return shortHairShortRound(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.shortHairShortWaved:
        return shortHairShortWaved(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.shortHairSides:
        return shortHairSides(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.shortHairTheCaesar:
        return shortHairTheCaesar(accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
      case TopType.shortHairTheCaesarSidePart:
        return shortHairTheCaesarSidePart(
            accessoriesType: accessoriesType, hairColor: hairColor, facialHair: facialHair);
    }
  }
}

class TopConverter extends Converter<Top> {
  @override
  Top fromMap(Map<String, dynamic> map) {
    return Top._(
      topType: enumFromJson(TopType.values, map['topType'])!,
      accessoriesType: enumFromJson(AccessoriesType.values, map['accessoriesType']) ?? AccessoriesType.blank,
      hatColor: enumFromJson(HatColor.values, map['hatColor']) ?? HatColor.black,
      hairColor: enumFromJson(HairColor.values, map['hairColor']) ?? HairColor.black,
      facialHair: FacialHairConverter().fromMap(map['facialHair']),
    );
  }

  @override
  Map<String, dynamic> toMap(Top value) {
    return {
      'topType': enumToJson(value.topType),
      'accessoriesType': enumToJson(value.accessoriesType),
      'hatColor': enumToJson(value.hatColor),
      'hairColor': enumToJson(value.hairColor),
      'facialHair': FacialHairConverter().toMap(value.facialHair),
    };
  }
}
