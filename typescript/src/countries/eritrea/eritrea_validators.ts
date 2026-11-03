import { PlateCheck, RuledPlateValidator } from '../../core/validators/plate_validator';

/** Judges `ER`, a digit in the disc and a five-digit number (`ER – 3  01860`).
 * Only one reference plate exists, so the rules are its shape. Reports, never
 * bars a keystroke. */
export class EritreaValidator extends RuledPlateValidator {
  readonly checks = [
    new PlateCheck('code', '[0-9]{1}', 'The disc holds one digit.'),
    new PlateCheck('number', '[0-9]{5}', 'The number is five digits.'),
  ];
}
