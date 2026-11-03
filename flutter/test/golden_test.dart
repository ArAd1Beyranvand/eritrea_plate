import 'package:eritrea_plate/eritrea_plate.dart';
import 'package:plate_core/testing.dart';

void main() {
  plateGoldens('er', EritreaCountry.eritrea, <String, PlateGoldenCase>{
    'standard': (EritreaPlates.standard, EritreaThemes.standard, '3 01860'),
  });
}
