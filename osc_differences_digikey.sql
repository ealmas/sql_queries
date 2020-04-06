SET SQL_BIG_SELECTS=1;
select i5.ManufacturerPartNumber, max(i1.QuantityAvailable) qty1, max(i2.QuantityAvailable) qty2, max(i3.QuantityAvailable) qty3, max(i4.QuantityAvailable) qty4, max(i5.QuantityAvailable) qty5,
i4.Manufacturer,
i4.Description,
i4.MinimumQuantity,
i4.UnitPriceUSD,
i4.Packaging,
i4.Series,
i4.PartStatus,
i4.BaseResonator,
i4.Type_,
i4.Frequency,
i4.Function_,
i4.Output,
i4.VoltageSupply,
i4.FrequencyStability,
i4.AbsolutePullRange,
i4.OperatingTemperature,
i4.CurrentSupply,
i4.Ratings,
i4.MountingType,
i4.PackageCase,
i4.SizeDimension,
i4.HeightSeated
from oscillators_digikey_04122019 i5
left join oscillators_digikey_03012019 i4
on i5.ManufacturerPartNumber = i4.ManufacturerPartNumber
left join oscillators_digikey_02012019 i3
on i4.ManufacturerPartNumber = i3.ManufacturerPartNumber
left join oscillators_digikey_01022019 i2
on i3.ManufacturerPartNumber = i2.ManufacturerPartNumber
left join oscillators_digikey_11152018 i1
on i2.ManufacturerPartNumber = i1.ManufacturerPartNumber
group by i5.ManufacturerPartNumber
order by qty5 DESC
