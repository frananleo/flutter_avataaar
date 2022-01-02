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

  ///Get random[Style]

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

  ///Transform from map to [Style]
  factory Style.fromMap(Map<String, dynamic> map) {
    return Style(
      avatarStyle: Converter.enumFromJson(AvatarStyle.values, map['avatarStyle']),
    );
  }

  ///Transform from [Style] to map
  Map<String, dynamic> toMap() {
    return {'avatarStyle': Converter.enumToJson(avatarStyle)};
  }

  ///Encode to json
  String toJson() => json.encode(toMap());

  ///Decode from json
  factory Style.fromJson(String source) => Style.fromMap(json.decode(source));

  @override
  String toString() => 'Style(avatarStyle: $avatarStyle)';
}
