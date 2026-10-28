FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Eritrea to view examples:

https://platexample.ir/#/discover/eritrea

# eritrea_plate

Eritrea's licence plates for the `plate_core` library. The one plate the article's photo shows: `ER`, a digit in a disc and five digits, black on white, with an advisory validator.

## Install

```yaml
dependencies:
  plate_core: ^0.12.0
  eritrea_plate: ^0.1.0
```

## Use

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

## Contains

- `EritreaCountry` — country panel: `eritrea`.
- `EritreaPlates` — 1 plate spec: `standard`.
- `EritreaThemes` — 1 theme: `standard`.
- `EritreaValidator` — advisory validator; flags the frame, never blocks a keystroke.
- `EritreaSerialGenerator` — random plate generator.

## Plates

`ER – D` over `NNNNN`. Text groups: `code` (the disc) and `number`.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

