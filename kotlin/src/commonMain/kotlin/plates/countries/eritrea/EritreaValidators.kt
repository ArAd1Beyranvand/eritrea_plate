package plates.countries.eritrea

import plates.core.validators.PlateCheck
import plates.core.validators.RuledPlateValidator

/** Judges `ER`, a digit in the disc and a five-digit number (`ER – 3  01860`). Reports, never bars a keystroke. */
class EritreaValidator : RuledPlateValidator() {
    override val checks = listOf(
        PlateCheck("code", "[0-9]{1}", "The disc holds one digit."),
        PlateCheck("number", "[0-9]{5}", "The number is five digits."),
    )
}
