# Flutter_avataaar

Flutter wrapper widget for [Avataaars](https://getavataaars.com/) API - *a free online avatar generator for anyone to make their beautiful personal avatar easily*.

![flutter-avataaar](https://user-images.githubusercontent.com/45365279/146657228-b7d5fd77-543c-4a48-b81a-4e4c11956be5.gif)

## Getting Started

1. Create Avataaar object:
```Dart
// Create avatar with default constructor
Avataaar(
  skin: Skin.pale,
  top: Top(
    topType: TopType.longHairCurvy,
    accessoriesType: AccessoriesType.Round,
    facialHair: FacialHair.beardMagestic(
      facialHairColor: FacialHairColor.BlondeGolden,
    ),
  ),
);

// Randomize all properties
Avataaar.random();

// Or mix both
Avataaar.random(
  skin: Skin.pale,
  top: Top(
    topType: TopType.longHairCurvy,
    accessoriesType: AccessoriesType.Round,
    facialHair: FacialHair.random,
  ),
);
```

2. Create AvataaarGenerator widget and pass it the avatar:

```Dart
AvataaarGenerator
(
  avataaar: avataaar,
  onTranslateKey: (String key) {
  return Translate.get(key);
  }
  onUpdateAvataaar:() {setState((){});},
);

// By default package will use SvgPicture to render the image. AvataaarPicture could be used to create a custom
// [builder] constructor and create widget for given image url:
 AvataaarPicture.builder(
  builder: (context, avataaar) {
    // ...
  },
)
```

### Persisting avatars

Use `Avataaar.toJson()` and `Avataaar.fromJson(String)` methods to serialize/deserialize avatars.

### Getting image bytes

Use the funtion getPngFromSvg from the class Avataaar to get the png File.
