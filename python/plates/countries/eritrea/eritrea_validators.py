"""Port of eritrea_plate/lib/src/eritrea_validators.dart."""

from plates.core.validators.plate_validator import PlateCheck, RuledPlateValidator


class EritreaValidator(RuledPlateValidator):
    checks = (
        PlateCheck("code", r"[0-9]{1}", "The disc holds one digit."),
        PlateCheck("number", r"[0-9]{5}", "The number is five digits."),
    )
