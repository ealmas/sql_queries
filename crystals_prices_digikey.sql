SET SQL_BIG_SELECTS=1;
select i1.DigiKeyPartNumber, i1.ManufacturerPartNumber, i6.UnitPriceUSD prc1, i5.UnitPriceUSD prc2, i4.UnitPriceUSD prc3, i3.UnitPriceUSD prc4, i2.UnitPriceUSD prc5, i1.UnitPriceUSD prc6,
i1.Manufacturer,
i1.QuantityAvailable qty,
i1.Description,
i1.Series,
i1.PartStatus,
i1.Type_,
i1.Frequency,
i1.FrequencyStability,
i1.FrequencyTolerance,
i1.LoadCapacitance,
i1.EquivalentSeriesResistance,
i1.OperatingMode,
i1.OperatingTemperature,
i1.Ratings,
i1.MountingType,
i1.PackageCase,
i1.SizeDimension,
i1.HeightSeated
from crystals_digikey_04152019 i1
left join crystals_digikey_03152019 i2
on i1.DigiKeyPartNumber = i2.DigiKeyPartNumber
left join crystals_digikey_02152019 i3
on i2.DigiKeyPartNumber = i3.DigiKeyPartNumber
left join crystals_digikey_01182019 i4
on i3.DigiKeyPartNumber = i4.DigiKeyPartNumber
left join crystals_digikey_12212018 i5
on i4.DigiKeyPartNumber = i5.DigiKeyPartNumber
left join crystals_digikey_11152018 i6
on i5.DigiKeyPartNumber= i6.DigiKeyPartNumber
group by i1.DigiKeyPartNumber
order by qty DESC