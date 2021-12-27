import 'dart:convert';

import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';
import 'package:flutter_avataaar/src/parts/pieces.dart';

class Eyes implements AvataaarPart {
  EyeType eyeType;
  Eyes({
    required this.eyeType,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Eyes && other.eyeType == eyeType;
  }

  @override
  int get hashCode => eyeType.hashCode;

  @override
  List get pieces => [eyeType];

  static Eyes get random => Eyes(eyeType: randomPiece(EyeType.values));

  Eyes copyWith({
    EyeType? eyeType,
  }) {
    return Eyes(
      eyeType: eyeType ?? this.eyeType,
    );
  }

  factory Eyes.fromMap(Map<String, dynamic> map) {
    return Eyes(
      eyeType: Converter.enumFromJson(EyeType.values, map['eyeType']),
    );
  }

  Map<String, dynamic> toMap() {
    return {'eyeType': Converter.enumToJson(eyeType)};
  }

  String toJson() => json.encode(toMap());

  factory Eyes.fromJson(String source) => Eyes.fromMap(json.decode(source));

  @override
  String toString() => 'Eyes(eyeType: $eyeType)';
}
