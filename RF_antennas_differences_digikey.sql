SET SQL_BIG_SELECTS=1;
select *,
(qty2-qty1), (qty3-qty2), (qty4-qty3), (qty5-qty4), (qty6-qty5)
from
(
select i6.ManufacturerPartNumber, max(i1.QuantityAvailable) qty1, max(i2.QuantityAvailable) qty2, max(i3.QuantityAvailable) qty3, max(i4.QuantityAvailable) qty4, max(i5.QuantityAvailable) qty5, max(i6.QuantityAvailable) qty6,
i6.Manufacturer,
i6.Description,
i6.UnitPriceUSD,
i6.MinimumQuantity,
i6.Packaging,
i6.Series,
i6.PartStatus,
i6.FrequencyGroup,
i6.Frequency,
i6.FrequencyRange,
i6.AntennaType,
i6.NumberofBands,
i6.VSWR,
i6.ReturnLoss,
i6.Gain,
i6.PowerMax,
i6.Features,
i6.Termination,
i6.IngressProtection,
i6.MountingType,
i6.Height,
i6.Applications
from RF_antennas_11212018 i1
left join RF_antennas_12212018 i2
on i1.ManufacturerPartNumber = i2.ManufacturerPartNumber
left join RF_antennas_01182019 i3
on i2.ManufacturerPartNumber = i3.ManufacturerPartNumber
left join RF_antennas_02152019 i4
on i3.ManufacturerPartNumber = i4.ManufacturerPartNumber
left join RF_antennas_03152019 i5
on i4.ManufacturerPartNumber = i5.ManufacturerPartNumber
left join RF_antennas_04162019 i6
on i5.ManufacturerPartNumber = i6.ManufacturerPartNumber
group by i6.ManufacturerPartNumber
order by qty6 DESC
) t1
