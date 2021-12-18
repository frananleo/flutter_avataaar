import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';
import 'package:flutter_avataaar/src/parts/pieces.dart';

class Style implements AvataaarPart {
  final AvatarStyle? avatarStyle;

  Style._({
    this.avatarStyle,
  });

  @override
  List get pieces => [avatarStyle];

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Style && runtimeType == other.runtimeType && avatarStyle == other.avatarStyle;

  @override
  int get hashCode => avatarStyle.hashCode;

  static Style get circle => Style._(avatarStyle: AvatarStyle.circle);

  static Style get transparent => Style._(avatarStyle: AvatarStyle.transparent);

  static Style get random {
    final avatarStyle = randomPiece(AvatarStyle.values);
    switch (avatarStyle) {
      case AvatarStyle.circle:
        return circle;
      case AvatarStyle.transparent:
        return transparent;
    }
  }
}

class StyleConverter extends Converter<Style> {
  @override
  Style fromMap(Map<String, dynamic> map) {
    return Style._(
      avatarStyle: enumFromJson(AvatarStyle.values, map['avatarStyle']),
    );
  }

  @override
  Map<String, dynamic> toMap(Style value) {
    return {'avatarStyle': enumToJson(value.avatarStyle)};
  }
}
