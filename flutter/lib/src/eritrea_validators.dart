import 'package:plate_core/plate_core.dart';

/// Judges `ER`, a digit in the disc and a five-digit number (`ER – 3  01860`).
/// Only one reference plate exists, so the rules are its shape. Reports, never
/// bars a keystroke.
class EritreaValidator extends RuledPlateValidator {
  const EritreaValidator();

  static const String reasonCode = 'The disc holds one digit.';
  static const String reasonNumber = 'The number is five digits.';

  @override
  List<PlateCheck> get checks => const <PlateCheck>[
    PlateCheck('code', r'[0-9]{1}', reasonCode),
    PlateCheck('number', r'[0-9]{5}', reasonNumber),
  ];
}
