SET SQL_BIG_SELECTS=1;
select i3.ManufacturerPartNumber, max(i1.QuantityAvailable) qty1, max(i2.QuantityAvailable) qty2, max(i3.QuantityAvailable) qty3,
i3.Manufacturer,
i3.Description,
i3.UnitPriceUSD,
i3.Series,
i3.PartStatus,
i3.gender,
i3.Style,
i3.1stConnector,
i3.2ndConnector,
i3.Length,
i3.CableType,
i3.Impedance,
i3.FrequencyMax,
i3.Color,
i3.Features,
i3.OperatingTemperature
from Coaxial_cables_02052019 i3
left join Coaxial_cables_01022019 i2
on i3.ManufacturerPartNumber = i2.ManufacturerPartNumber
left join Coaxial_cables_11272018 i1
on i2.ManufacturerPartNumber = i1.ManufacturerPartNumber
group by i3.ManufacturerPartNumber
order by qty3 DESC
