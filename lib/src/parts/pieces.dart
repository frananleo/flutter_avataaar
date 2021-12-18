import 'dart:math';

T randomPiece<T>(List<T> pieces) {
  final index = Random().nextInt(pieces.length - 1);
  return pieces[index];
}

enum AvatarStyle {
  circle,
  transparent,
}

final List<String> avatarStyleNames = [
  'avatar_style_circle',
  'avatar_style_transparent',
];

enum TopType {
  noHair,
  eyepatch,
  hat,
  hijab,
  turban,
  winterHat1,
  winterHat2,
  winterHat3,
  winterHat4,
  longHairBigHair,
  longHairBob,
  longHairBun,
  longHairCurly,
  longHairCurvy,
  longHairDreads,
  longHairFrida,
  longHairFro,
  longHairFroBand,
  longHairNotTooLong,
  longHairShavedSides,
  longHairMiaWallace,
  longHairStraight,
  longHairStraight2,
  longHairStraightStrand,
  shortHairDreads01,
  shortHairDreads02,
  shortHairFrizzle,
  shortHairShaggyMullet,
  shortHairShortCurly,
  shortHairShortFlat,
  shortHairShortRound,
  shortHairShortWaved,
  shortHairSides,
  shortHairTheCaesar,
  shortHairTheCaesarSidePart,
}

final List<String> topTypeNames = [
  'top_type_no_hair',
  'top_type_eyepatch',
  'top_type_hat',
  'top_type_hijab',
  'top_type_turban',
  'top_type_winter_hat_1',
  'top_type_winter_hat_2',
  'top_type_winter_hat_3',
  'top_type_winter_hat_4',
  'top_type_long_hair_big_hair',
  'top_type_long_hair_bob',
  'top_type_long_hair_bun',
  'top_type_long_hair_curly',
  'top_type_long_hair_curvy',
  'top_type_long_hair_dreads',
  'top_type_long_hair_frida',
  'top_type_long_hair_fro',
  'top_type_long_hair_fro_band',
  'top_type_long_hair_not_too_long',
  'top_type_long_hair_shaved_sides',
  'top_type_long_hair_mia_wallace',
  'top_type_long_hair_straight',
  'top_type_long_hair_straight_2',
  'top_type_long_hair_straight_strand',
  'top_type_short_hair_dreads_01',
  'top_type_short_hair_dreads_02',
  'top_type_short_hair_frizzle',
  'top_type_short_hair_shaggy_mullet',
  'top_type_short_hair_short_curly',
  'top_type_short_hair_short_flat',
  'top_type_short_hair_short_round',
  'top_type_short_hair_short_waved',
  'top_type_short_hair_sides',
  'top_type_short_hair_the_caesar',
  'top_type_short_hair_the_caesar_side_part',
];

enum AccessoriesType {
  blank,
  kurt,
  prescription01,
  prescription02,
  round,
  sunglasses,
  wayfarers,
}

final List<String> accessoriesTypeNames = [
  'accessories_type_blank',
  'accessories_type_kurt',
  'accessories_type_prescription_01',
  'accessories_type_prescription_02',
  'accessories_type_round',
  'accessories_type_sunglasses',
  'accessories_type_wayfarers',
];

enum HairColor {
  auburn,
  black,
  blonde,
  blondeGolden,
  brown,
  brownDark,
  pastelPink,
  platinum,
  red,
  silverGray,
}

final List<String> hairColorNames = [
  'hair_color_auburn',
  'hair_color_black',
  'hair_color_blonde',
  'hair_color_blonde_golden',
  'hair_color_brown',
  'hair_color_brown_dark',
  'hair_color_pastel_pink',
  'hair_color_platinum',
  'hair_color_red',
  'hair_color_silver_gray',
];

enum HatColor {
  black,
  blue01,
  blue02,
  blue03,
  gray01,
  gray02,
  heather,
  pastelBlue,
  pastelGreen,
  pastelOrange,
  pastelRed,
  pastelYellow,
  pink,
  red,
  white,
}

final List<String> hatColorNames = [
  'hat_color_black',
  'hat_color_blue_01',
  'hat_color_blue_02',
  'hat_color_blue_03',
  'hat_color_gray_01',
  'hat_color_gray_02',
  'hat_color_heather',
  'hat_color_pastel_blue',
  'hat_color_pastel_green',
  'hat_color_pastel_orange',
  'hat_color_pastel_red',
  'hat_color_pastel_yellow',
  'hat_color_pink',
  'hat_color_red',
  'hat_color_white',
];

enum FacialHairType {
  blank,
  beardMedium,
  beardLight,
  beardMagestic,
  moustacheFancy,
  moustacheMagnum,
}

final List<String> facialHairTypeNames = [
  'facial_hair_type_blank',
  'facial_hair_type_beard_medium',
  'facial_hair_type_beard_light',
  'facial_hair_type_beard_magestic',
  'facial_hair_type_moustache_fancy',
  'facial_hair_type_moustache_magnum',
];

enum FacialHairColor {
  auburn,
  black,
  blonde,
  blondeGolden,
  brown,
  brownDark,
  platinum,
  red,
}

final List<String> facialHairColorNames = [
  'facial_hair_color_auburn',
  'facial_hair_color_black',
  'facial_hair_color_blonde',
  'facial_hair_color_blonde_golden',
  'facial_hair_color_brown',
  'facial_hair_color_brown_dark',
  'facial_hair_color_platinum',
  'facial_hair_color_red',
];

enum ClotheType {
  blazerShirt,
  blazerSweater,
  collarSweater,
  graphicShirt,
  hoodie,
  overall,
  shirtCrewNeck,
  shirtScoopNeck,
  shirtVNeck,
}

final List<String> clotheTypeNames = [
  'clothe_type_blazer_shirt',
  'clothe_type_blazer_sweater',
  'clothe_type_collar_sweater',
  'clothe_type_graphic_shirt',
  'clothe_type_hoodie',
  'clothe_type_overall',
  'clothe_type_shirt_crew_neck',
  'clothe_type_shirt_scoop_neck',
  'clothe_type_shirt_v_neck',
];

enum ClotheColor {
  black,
  blue01,
  blue02,
  blue03,
  gray01,
  gray02,
  heather,
  pastelBlue,
  pastelGreen,
  pastelOrange,
  pastelRed,
  pastelYellow,
  pink,
  red,
  white,
}

final List<String> clotheColorNames = [
  'clothe_color_black',
  'clothe_color_blue_01',
  'clothe_color_blue_02',
  'clothe_color_blue_03',
  'clothe_color_gray_01',
  'clothe_color_gray_02',
  'clothe_color_heather',
  'clothe_color_pastel_blue',
  'clothe_color_pastel_green',
  'clothe_color_pastel_orange',
  'clothe_color_pastel_red',
  'clothe_color_pastel_yellow',
  'clothe_color_pink',
  'clothe_color_red',
  'clothe_color_white',
];

enum GraphicType {
  bat,
  cumbia,
  deer,
  diamond,
  hola,
  pizza,
  resist,
  selena,
  bear,
  skullOutline,
  skull,
}

final List<String> graphicTypeNames = [
  'graphic_type_bat',
  'graphic_type_cumbia',
  'graphic_type_deer',
  'graphic_type_diamond',
  'graphic_type_hola',
  'graphic_type_pizza',
  'graphic_type_resist',
  'graphic_type_selena',
  'graphic_type_bear',
  'graphic_type_skull_outline',
  'graphic_type_skull',
];

enum EyeType {
  close,
  cry,
  defaultType,
  dizzy,
  eyeRoll,
  happy,
  hearts,
  side,
  squint,
  surprised,
  wink,
  winkWacky,
}

final List<String> eyeTypeNames = [
  'eye_type_close',
  'eye_type_cry',
  'eye_type_default',
  'eye_type_dizzy',
  'eye_type_eye_roll',
  'eye_type_happy',
  'eye_type_hearts',
  'eye_type_side',
  'eye_type_squint',
  'eye_type_surprised',
  'eye_type_wink',
  'eye_type_wink_wacky',
];

enum EyebrowType {
  angry,
  angryNatural,
  defaultType,
  defaultNatural,
  flatNatural,
  raisedExcited,
  raisedExcitedNatural,
  sadConcerned,
  sadConcernedNatural,
  unibrowNatural,
  upDown,
  upDownNatural,
}

final List<String> eyebrowTypeNames = [
  'eyebrow_type_angry',
  'eyebrow_type_angry_natural',
  'eyebrow_type_default',
  'eyebrow_type_default_natural',
  'eyebrow_type_flat_natural',
  'eyebrow_type_raised_excited',
  'eyebrow_type_raised_excited_natural',
  'eyebrow_type_sad_concerned',
  'eyebrow_type_sad_concerned_natural',
  'eyebrow_type_unibrow_natural',
  'eyebrow_type_up_down',
  'eyebrow_type_up_down_natural',
];

enum MouthType {
  concerned,
  defaultType,
  disbelief,
  eating,
  grimace,
  sad,
  screamOpen,
  serious,
  smile,
  tongue,
  twinkle,
  vomit,
}

final List<String> mouthTypeNames = [
  'mouth_type_concerned',
  'mouth_type_default',
  'mouth_type_disbelief',
  'mouth_type_eating',
  'mouth_type_grimace',
  'mouth_type_sad',
  'mouth_type_scream_open',
  'mouth_type_serious',
  'mouth_type_smile',
  'mouth_type_tongue',
  'mouth_type_twinkle',
  'mouth_type_vomit',
];

enum SkinColor {
  tanned,
  yellow,
  pale,
  light,
  brown,
  darkBrown,
  black,
}

final List<String> skinColorNames = [
  'skin_color_tanned',
  'skin_color_yellow',
  'skin_color_pale',
  'skin_color_light',
  'skin_color_brown',
  'skin_color_dark_brown',
  'skin_color_black'
];
