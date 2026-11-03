import 'package:plate_alphabet/plate_alphabet.dart';
import 'package:plate_core/plate_core.dart';

import 'eritrea_colors.dart';
import 'eritrea_country.dart';

/// Where the ink sits, in plate units, measured off the flattened photo
/// (`Eritrea_vehicle_registration_plate`, 2080×1156, 4 px per unit, so the
/// canvas is 520×289, aspect 1.80). The article gives no size in mm.
///
/// * Top row, ink y 24.8..123: `ER` x 25..190 (E 26..121.5 tall), dash
///   x 234.8..326 y 65.2..79, disc x 393.8..491.8 (98 across) holding one
///   digit.
/// * Number row, ink y 146..263.5: five digits x 25..489.5, centres 66, 154,
///   243, 346, 447. The photo's face is proportional, so the even pitch used
///   here (94) is an approximation.
///
/// **Under-height ink, accepted.** The ink is 95 and 117 tall; `glyphStyle`
/// gives ~0.53 of the box, so matching needs boxes the plate cannot hold. The
/// boxes are 147 and 160 tall (ink ~75–80% of reference). `plate_core` is
/// unchanged.
///
/// The dash and the disc float clear of the plate edge, so they are a
/// [PlateRule] and a [PlateBand] capsule, not sections.
abstract final class _Layout {
  static const double width = 520, height = 289;

  static const double rowOneCentre = 73.9, rowOneBox = 147;

  static const double erCentre = 107.5, erWidth = 170;

  static const PlateBox dash = PlateBox(234.8, 65.2, 91.2, 13.8);
  static const PlateBox disc = PlateBox(393.8, 24.8, 98, 98);
  static const double discBox = 130;

  static const double numberLeft = 22, numberRight = 492, numberTop = 125;
  static const double numberHeight = 160;
}

/// `ER – D` over `NNNNN`. Text groups: `code` (the disc) and `number`.
abstract final class EritreaPlates {
  static final PlateSpec standard = PlateSpec(
    id: 'er.standard',
    country: EritreaCountry.eritrea,
    canvasWidth: _Layout.width,
    canvasHeight: _Layout.height,
    noPanel: true,
    panel: const PlatePanel(box: PlateBox(0, 0, 0, _Layout.height)),
    slots: <PlateSlot>[
      PlateSlot(
        alphabet: EritreaAlphabets.digits,
        box: PlateBox(
          _Layout.disc.left,
          _Layout.rowOneCentre - _Layout.discBox / 2,
          _Layout.disc.width,
          _Layout.discBox,
        ),
        color: EritreaColors.white,
        group: 'code',
      ),
      PlateSlot(
        alphabet: EritreaAlphabets.digits,
        box: PlateBox(
          _Layout.numberLeft,
          _Layout.numberTop,
          _Layout.numberRight - _Layout.numberLeft,
          _Layout.numberHeight,
        ),
        length: 5,
        spacing: plateRunSpacing(
          (_Layout.numberRight - _Layout.numberLeft) / 5,
          _Layout.numberHeight,
        ),
        group: 'number',
      ),
    ],
    bands: <PlateBand>[
      PlateBand(
        box: _Layout.disc,
        color: EritreaColors.ink,
        topCornerRadius: _Layout.disc.height / 2,
        bottomCornerRadius: _Layout.disc.height / 2,
      ),
    ],
    rules: const <PlateRule>[PlateRule(box: _Layout.dash)],
    labels: <PlateLabel>[
      PlateLabel(
        text: 'ER',
        box: PlateBox.centered(
          _Layout.erCentre,
          _Layout.rowOneCentre,
          _Layout.erWidth,
          _Layout.rowOneBox,
        ),
        glyphHeight: _Layout.rowOneBox,
      ),
    ],
  );
}
