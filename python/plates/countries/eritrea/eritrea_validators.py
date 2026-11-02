"""Port of eritrea_plate/lib/src/eritrea_validators.dart."""
from __future__ import annotations

from plates.core.validators.plate_validator import GatedPlateValidator, PlateEntry, PlateValidation, is_digits_of_length


class EritreaValidator(GatedPlateValidator):
    gate_group = "number"
    reason_code = "The disc holds one digit."
    reason_number = "The number is five digits."

    def judge(self, entry: PlateEntry) -> PlateValidation:
        if not is_digits_of_length(entry.group("code"), 1):
            return PlateValidation.invalid(self.reason_code)
        if not is_digits_of_length(entry.group("number"), 5):
            return PlateValidation.invalid(self.reason_number)
        return PlateValidation.valid()
