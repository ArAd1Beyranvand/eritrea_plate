FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Eritrea to view examples:

https://platexample.ir/#/discover/eritrea:flutter

# eritrea_plate

Eritrea's licence plates for the plate_core library — categories, colours, themes, alphabets and an advisory validator.

## Languages

| Language | Folder | Example |
| --- | --- | --- |
| Flutter / Dart | [`flutter/`](https://github.com/ArAd1Beyranvand/eritrea_plate/tree/main/flutter) | [platexample](https://platexample.ir/#/discover/eritrea:flutter) |
| Kotlin | [`kotlin/`](https://github.com/ArAd1Beyranvand/eritrea_plate/tree/main/kotlin) | [platexample](https://platexample.ir/#/discover/eritrea:kotlin) |
| Python | [`python/`](https://github.com/ArAd1Beyranvand/eritrea_plate/tree/main/python) | [platexample](https://platexample.ir/#/discover/eritrea:python) |
| TypeScript | [`typescript/`](https://github.com/ArAd1Beyranvand/eritrea_plate/tree/main/typescript) | [platexample](https://platexample.ir/#/discover/eritrea:typescript) |

## Quick start

### Install

```yaml
dependencies:
  plate_core: ^0.12.0
  eritrea_plate: ^0.1.0
```

### Use

```dart
import 'package:plate_core/plate_core.dart';
import 'package:eritrea_plate/eritrea_plate.dart';

PlateCanvas(
  spec: EritreaPlates.standard,
  theme: EritreaThemes.standard,
  validator: const EritreaValidator(),
  autoValidate: true,
  onChooseCharacter: noCharacterChooser,
);
```

## Specs

Each spec is one plate layout.

- `EritreaPlates.standard` — id `er.standard`

## Themes

- `EritreaThemes.standard`

## Change it

`PlateCanvas` takes `spec:` (an entry of `EritreaPlates`) and `theme:` (an entry of `EritreaThemes`). Set `validator:` to `EritreaValidator()` and `autoValidate: true` to show validation hints.

## Also included

- `EritreaCountry` — the country panel.
- `EritreaValidator` — the plate validator.

## Plates

`ER – D` over `NNNNN`. Text groups: `code` (the disc) and `number`.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/eritrea_plate/blob/main/LICENSE).
