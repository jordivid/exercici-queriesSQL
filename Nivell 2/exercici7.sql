use USAirlineFlights;

SELECT UniqueCarrier, avg(ArrDelay) AS avgDelay
 FROM Flights
 GROUP BY UniqueCarrier
 HAVING avg(ArrDelay) > 10
 ORDER BY avgDelay DESC;