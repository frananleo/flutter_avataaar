import 'package:flutter_avataaar/src/avataaar/avataaar.dart';
import 'package:flutter_avataaar/src/helpers/converter.dart';
import 'package:flutter_avataaar/src/parts/parts.dart';

class AvataaarConverter extends Converter<Avataaar> {
  @override
  Avataaar fromMap(Map<String, dynamic> map) => Avataaar(
        top: TopConverter().fromMap(map['Top']),
        clothes: ClothesConverter().fromMap(map['Clothes']),
        eyebrow: EyebrowConverter().fromMap(map['Eyebrow']),
        eyes: EyesConverter().fromMap(map['Eyes']),
        mouth: MouthConverter().fromMap(map['Mouth']),
        skin: SkinConverter().fromMap(map['Skin']),
        style: StyleConverter().fromMap(map['Style']),
      );

  @override
  Map<String, dynamic> toMap(Avataaar value) => {
        'Top': TopConverter().toMap(value.top),
        'Clothes': ClothesConverter().toMap(value.clothes),
        'Eyebrow': EyebrowConverter().toMap(value.eyebrow),
        'Eyes': EyesConverter().toMap(value.eyes),
        'Mouth': MouthConverter().toMap(value.mouth),
        'Skin': SkinConverter().toMap(value.skin),
        'Style': StyleConverter().toMap(value.style),
      };
}
