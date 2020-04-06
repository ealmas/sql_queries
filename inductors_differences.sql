SET SQL_BIG_SELECTS=1;
select i6.ManufacturerPartNumber, max(i1.QuantityAvailable) qty1, max(i2.QuantityAvailable) qty2, max(i3.QuantityAvailable) qty3, max(i4.QuantityAvailable) qty4, max(i5.QuantityAvailable) qty5, max(i6.QuantityAvailable) qty6,
i6.Manufacturer,
i6.Description,
i6.UnitPriceUSD,
i6.MinimumQuantity,
i6.Packaging,
i6.Series,
i6.PartStatus,
i6.Type_,
i6.MaterialCore,
i6.Inductance,
i6.Tolerance,
i6.CurrentRating,
i6.CurrentSaturation,
i6.Shielding,
i6.DCResistance,
i6.QFreq,
i6.FrequencySelfResonant,
i6.Ratings,
i6.OperatingTemperature,
i6.InductanceFrequency,
i6.Features,
i6.MountingType,
i6.PackageCase,
i6.SupplierDevicePackage,
i6.SizeDimension,
i6.HeightSeated
from inductors_digikey_04152019 i6
join inductors_digikey_03152019 i5
on i6.ManufacturerPartNumber = i5.ManufacturerPartNumber
join inductors_digikey_02152019 i4
on i5.ManufacturerPartNumber = i4.ManufacturerPartNumber
join inductors_digikey_01182019 i3
on i4.ManufacturerPartNumber = i3.ManufacturerPartNumber
join inductors_digikey_12212018 i2
on i3.ManufacturerPartNumber = i2.ManufacturerPartNumber
join inductors_digikey_11152018 i1
on i2.ManufacturerPartNumber = i1.ManufacturerPartNumber
group by i6.ManufacturerPartNumber