/// Eritrea's licence plates for the `plate_core` library.
///
/// The one plate the article's photo shows: `ER`, a digit in a disc and five
/// digits, black on white, with an advisory validator.
library;

// TODO(py): [D5] one module `plates.countries.eritrea`; assets via importlib.resources.
// TODO(ts): [D5] one subpath export `./countries/eritrea`; tree-shakable.
// TODO(kt): [D5] package `countries.eritrea` in the countries module.
export 'package:plate_alphabet/plate_alphabet.dart' show EritreaAlphabets;

export 'src/eritrea_colors.dart';
export 'src/eritrea_country.dart';
export 'src/eritrea_plates.dart';
export 'src/eritrea_serial_generator.dart';
export 'src/eritrea_themes.dart';
export 'src/eritrea_validators.dart';
