import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';
import 'package:eritrea_plate/eritrea_plate.dart';

void main() => runApp(
  PlateExampleApp(spec: EritreaPlates.standard, theme: EritreaThemes.standard),
);
