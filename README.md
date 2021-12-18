# Flutter_avataaar

[![pub package](https://img.shields.io/pub/v/avataaar_image_2.svg)](https://pub.dartlang.org/packages/avataaar_image_2)

Flutter wrapper widget for [Avataaars](https://getavataaars.com/) API - *a free online avatar generator for anyone to make their beautiful personal avatar easily*.

![AvataaarImage example](https://thumbs.gfycat.com/PettyBeautifulHydra-small.gif)

## Avataaars

Credits to [Pablo Stanley](https://twitter.com/pablostanley) and [Fang-Pen Lin](https://twitter.com/fangpenlin) for creating and making [Avataaars](https://avataaars.com/) available to use. 👏

## Getting Started

1. Create Avataaar object:
```Dart
// Create avatar with default constructor
Avataaar(
  skin: Skin.pale,
  style: Style.circle,
  top: Top.longHairCurly(
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
  style: Style.circle,
  top: Top.longHairCurly(
    accessoriesType: AccessoriesType.Round,
    facialHair: FacialHair.random,
  ),
);
```

2. Create AvataaarImage widget and pass it the avatar:

```Dart
AvataaarImage(
  avatar: avatar,
  errorImage: Icon(Icons.error),
  placeholder: CircularProgressIndicator(),
  width: 128.0,
);

// By default package will use CachedNetworkImage to render the image. If it doesn't fit your 
// needs it's possible to use [builder] constructor and create widget for given image url:
AvataaarImage.builder(
  avatar: avatar,
  builder: (context, url) {
    // ...
  },
)
```

### Persisting avatars

Use `Avataaar.toJson()` and `Avataaar.fromJson(String)` methods to serialize/deserialize avatars.

### Getting image bytes

Instantiate `AvataaarsApi` object and use its `getImage` method or `getUrl` if you prefer to handle fetching the data on your own.
