SET SQL_BIG_SELECTS=1;
select i1.ManufacturerPartNumber, max(i1.QuantityAvailable) qty1, max(i2.QuantityAvailable) qty2, max(i3.QuantityAvailable) qty3, max(i4.QuantityAvailable) qty4, max(i5.QuantityAvailable) qty5, max(i6.QuantityAvailable) qty6, max(i7.QuantityAvailable) qty7,
i1.Manufacturer,
i1.Description,
i7.UnitPriceUSD,
max(i7.MinimumQuantity),
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
from crystals_digikey_11152018 i1
left join crystals_digikey_12212018 i2
on i1.ManufacturerPartNumber = i2.ManufacturerPartNumber
left join crystals_digikey_01182019 i3
on i2.ManufacturerPartNumber = i3.ManufacturerPartNumber
left join crystals_digikey_02152019 i4
on i3.ManufacturerPartNumber = i4.ManufacturerPartNumber
left join crystals_digikey_03152019 i5
on i4.ManufacturerPartNumber = i5.ManufacturerPartNumber
left join crystals_digikey_04152019 i6
on i5.ManufacturerPartNumber = i6.ManufacturerPartNumber
left join crystals_digikey_06102019 i7
on i6.ManufacturerPartNumber = i7.ManufacturerPartNumber
group by i7.ManufacturerPartNumber
order by qty7 DESC

