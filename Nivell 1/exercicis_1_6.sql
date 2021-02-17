use USAirlineFlights;

-- Exercici 1
SELECT count(*) FROM Flights;

-- Exercici 2
SELECT Origin, avg(ArrDelay) AS prom_arribades, avg(DepDelay) AS prom_sortides 
  FROM `Flights` 
  GROUP BY Origin
  ORDER BY Origin;

-- Exercici 3
SELECT Origin, colYear, colMonth, avg(ArrDelay) AS prom_arribades 
  FROM `Flights`
  GROUP BY Origin, colYear, colMonth
  ORDER BY Origin, colYear, colMonth;

-- Exercici 4
SELECT City, colYear, colMonth, avg(ArrDelay) AS prom_arribades 
  FROM `USAirports`, `Flights`
  WHERE Origin = IATA
  GROUP BY City, colYear, colMonth
  ORDER BY City, colYear, colMonth;

-- Exercici 5
SELECT UniqueCarrier, colYear, colMonth, count(*) AS total_cancelled
  FROM `Flights`
  WHERE Cancelled = 1
  GROUP BY UniqueCarrier,colYear, colMonth
  ORDER BY total_cancelled DESC, colYear DESC, colMonth DESC;

-- Exercici 6
SELECT TailNum, sum(Distance) AS totalDistance
  FROM `Flights`
  WHERE TailNum is not null
  GROUP BY TailNum
  ORDER BY totalDistance DESC
  LIMIT 10;
