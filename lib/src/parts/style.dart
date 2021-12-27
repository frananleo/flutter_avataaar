import 'dart:convert';

import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';
import 'package:flutter_avataaar/src/parts/pieces.dart';

class Style implements AvataaarPart {
  AvatarStyle avatarStyle;

  Style({
    required this.avatarStyle,
  });

  @override
  List get pieces => [avatarStyle];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Style && other.avatarStyle == avatarStyle;
  }

  @override
  int get hashCode => avatarStyle.hashCode;

  static Style get random {
    return Style(avatarStyle: AvatarStyle.circle);
  }

  Style copyWith({
    AvatarStyle? avatarStyle,
  }) {
    return Style(
      avatarStyle: avatarStyle ?? this.avatarStyle,
    );
  }

  factory Style.fromMap(Map<String, dynamic> map) {
    return Style(
      avatarStyle:
          Converter.enumFromJson(AvatarStyle.values, map['avatarStyle']),
    );
  }

  Map<String, dynamic> toMap() {
    return {'avatarStyle': Converter.enumToJson(avatarStyle)};
  }

  String toJson() => json.encode(toMap());

  factory Style.fromJson(String source) => Style.fromMap(json.decode(source));

  @override
  String toString() => 'Style(avatarStyle: $avatarStyle)';
}
