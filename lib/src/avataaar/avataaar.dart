library flutter_avataaar;

import 'dart:convert' show json;
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_avataaar/src/helpers/avataaar_api.dart';
import 'package:flutter_avataaar/src/helpers/hex_color.dart';

import '../parts/parts.dart';
import 'avataaar_converter.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_provider/path_provider.dart';

import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

class Avataaar implements AvataaarPart {
  final String baseUrl;
  final Top top;
  final Clothes clothes;
  final Eyes eyes;
  final Eyebrow eyebrow;
  final Mouth mouth;
  final Skin skin;
  final Style style;
  Color? backgroundColor;

  Avataaar({
    this.baseUrl = AvataaarsApi.baseUrl,
    required this.top,
    required this.clothes,
    required this.eyes,
    required this.eyebrow,
    required this.mouth,
    required this.skin,
    required this.style,
    this.backgroundColor = const Color(0xff65C9FF),
  });

  static final List<Color> defautlBackgroundColors = <Color>[
    Color(0xff65C9FF),
    Colors.red,
    Colors.blue,
    Colors.amber,
    Colors.green,
    Colors.orange,
    Colors.black,
    Colors.brown,
    Colors.deepOrange
  ];
  Avataaar.random({
    String? baseUrl,
    Top? top,
    Clothes? clothes,
    Eyes? eyes,
    Eyebrow? eyebrow,
    Mouth? mouth,
    Skin? skin,
    Style? style,
    Color? backgroundColor,
  }) : this(
          baseUrl: baseUrl ?? AvataaarsApi.baseUrl,
          top: top ?? Top.random,
          clothes: clothes ?? Clothes.random,
          eyes: eyes ?? Eyes.random,
          eyebrow: eyebrow ?? Eyebrow.random,
          mouth: mouth ?? Mouth.random,
          skin: skin ?? Skin.random,
          style: style ?? Style.circle,
          backgroundColor: backgroundColor ??
              defautlBackgroundColors[
                  Random().nextInt(defautlBackgroundColors.length)],
        );

  Iterable<MapEntry<String, String>> get pieceEntries => pieces
      .expand((it) => it.pieces)
      .where((it) => it != null)
      .map(_splitEnum);

  @override
  List<AvataaarPart> get pieces =>
      [top, clothes, eyes, eyebrow, mouth, skin, style];

  MapEntry<String, String> _splitEnum<T>(T enumValue) {
    final split = enumValue.toString().split('.');
    return MapEntry(split[0], split[1]);
  }

  String toJson() => json.encode(AvataaarConverter().toMap(this));

  String toUrl() {
    //https://avataaars.io required that the first letter must be capitalised. fixed keys and added the capitalization to value
    final params = pieceEntries.map((it) {
      final key = it.key[0].toLowerCase() + it.key.substring(1);
      final value = it.value[0].toUpperCase() + it.value.substring(1);
      return '$key=$value';
    }).join('&');
    return '$baseUrl/?$params';
  }

  Future<File> getPngFromSvg({
    double? width,
    double? height,
  }) async {
    try {
      // if just one is set, has a square
      if (width != null || height != null) {
        width ??= height;
        height ??= width;
      }

      var finalWidth = width ?? 256.0;
      var finalHeight = height ?? 256.0;

      //getting the svg from server
      var svgString = await http.get(Uri.parse(toUrl())).then((it) => it.body);

      if (backgroundColor != null) {
        svgString = BackgroundColorHelper.getSvgWithBackground(
            svgString, backgroundColor!);
      }

      var unit8Picture = Uint8List.fromList(svgString.codeUnits);
      //Produces a [Drawableroot] from a [Uint8List] of SVG byte data (assumes UTF8 encoding).
      var svgDrawableRoot =
          await svg.fromSvgBytes(unit8Picture, 'svgToPngAvataaar');

      // Convert to ui.Picture
      var picture =
          svgDrawableRoot.toPicture(size: Size(finalWidth, finalHeight));
      // Convert to ui.Image. toImage() takes width and height as parameters
      // you need to find the best size to suit your needs and take into account the screen DPI
      var image =
          await picture.toImage(finalWidth.toInt(), finalHeight.toInt());
      var bytes = await image.toByteData(format: ImageByteFormat.png);
      var tempPath = (await getTemporaryDirectory()).path;
      //Saving as a temporary file using a unique string
      var file = File('$tempPath/${Uuid().v4()}.png');
      await file.writeAsBytes(
          bytes!.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes));
      return file;
    } on Exception catch (e) {
      throw Exception('Error transforming svg to a png -> $e');
    }
  }

  static Avataaar fromJson(String value) =>
      AvataaarConverter().fromMap(json.decode(value));

  Avataaar copyWith({
    Top? top,
    Clothes? clothes,
    Eyes? eyes,
    Eyebrow? eyebrow,
    Mouth? mouth,
    Skin? skin,
    Style? style,
  }) =>
      Avataaar(
        top: top ?? this.top,
        clothes: clothes ?? this.clothes,
        eyes: eyes ?? this.eyes,
        eyebrow: eyebrow ?? this.eyebrow,
        mouth: mouth ?? this.mouth,
        skin: skin ?? this.skin,
        style: style ?? this.style,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Avataaar &&
          runtimeType == other.runtimeType &&
          top == other.top &&
          clothes == other.clothes &&
          eyes == other.eyes &&
          eyebrow == other.eyebrow &&
          mouth == other.mouth &&
          skin == other.skin &&
          style == other.style;

  @override
  int get hashCode =>
      top.hashCode ^
      clothes.hashCode ^
      eyes.hashCode ^
      eyebrow.hashCode ^
      mouth.hashCode ^
      skin.hashCode ^
      style.hashCode;
}
