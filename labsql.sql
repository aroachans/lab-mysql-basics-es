-- en sql para hacer comentarios hay que usar los dos guiones, igual que las almohadillas en python
-- Consulta 1:Obtén los valores de id de los primeros 5 clientes del district_id con un valor igual a 1.
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

-- Consulta 2:En la tabla client, obtén el valor de id del último cliente donde el district_id sea igual a 72.
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- Consulta 3:Obtén las 3 cantidades más bajas en la tabla loan.
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

-- Consulta 4:¿Cuáles son los valores posibles para status, ordenados alfabéticamente en orden ascendente en la tabla loan?
SELECT DISTINCT status
FROM loan
ORDER BY status;

-- Consulta 5:¿Cuál es el loan_id del pago más alto recibido en la tabla loan?
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

-- Consulta 6:¿Cuál es el monto del préstamo de los 5 account_id más bajos en la tabla loan? Muestra el account_id y el monto correspondiente.
SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

-- Consulta 7:¿Cuáles son los account_id con el monto de préstamo más bajo que tienen una duration de préstamo de 60 en la tabla loan?
SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

-- Consulta 8:¿Cuáles son los valores únicos de k_symbol en la tabla order?
SELECT DISTINCT k_symbol
FROM `order`
WHERE k_symbol != ''
ORDER BY k_symbol;

-- Consulta 9:En la tabla order, ¿cuáles son los order_id del cliente con el account_id 34?
SELECT order_id
FROM `order`
WHERE account_id = 34;

-- Consulta 10:En la tabla order, ¿qué account_id fueron responsables de las órdenes entre order_id 29540 y order_id 29560 (inclusive)?
SELECT DISTINCT account_id 
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;

-- Consulta 11:En la tabla order, ¿cuáles son los montos individuales que fueron enviados a (account_to) id 30067122?
SELECT amount
FROM `order`
WHERE account_to = 30067122;

-- Consulta 12:En la tabla trans, muestra el trans_id, date, type y amount de las 10 primeras transacciones del account_id 793 en orden cronológico, de las más recientes a las más antiguas.
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

-- Consulta 13:En la tabla client, de todos los distritos con un district_id menor que 10, ¿cuántos clientes hay de cada district_id? Muestra los resultados ordenados por district_id en orden ascendente.
SELECT district_id, COUNT(client_id) AS Number_clients
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id;

-- Consulta 14:En la tabla card, ¿cuántas tarjetas existen para cada type? Ordena el resultado comenzando con el type más frecuente.
SELECT type, COUNT(card_id) AS cards
FROM card
GROUP BY type
ORDER BY cards DESC;

-- Consulta 15:Usando la tabla loan, imprime el top10 account_id basado en el sumatorio de todos los importes de sus prestamos
SELECT account_id, SUM(amount)
FROM loan
GROUP BY account_id
ORDER BY SUM(amount) DESC
LIMIT 10;

-- Consulta 16:usando la tabla loan, encuentra el numero de prestamos emitidos por dia, excepto la exclusion 930907, ordenador por fecha descendente
SELECT date, COUNT(loan_id) 
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- Consulta 17:en la tabla loan, por cada dia de Diciembre 1997, cuenta el numero de prestamos solicitados por cada duración unica, ordenados por fecha y duracion, ambas en sentido ascendente. Puedes ignorar los dias sin prestamos
SELECT date, duration, COUNT(loan_id)
FROM loan
WHERE date BETWEEN 971200 AND 971231 
GROUP BY date, duration
ORDER BY date, duration ASC;

-- Consulta 18: en la tabla trans, for el account_id 396, suma el importe de transacciones por cada tipo (VYDAJ = Outgoing, PRIJEM= Incoming) Tu salida tiene que tener el account_id, el tipo, la suma de importe como total_amount. Ordena alfabeticamente segun tipo
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type;
