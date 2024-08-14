-- Listar recepcionistas que efetuaram ao menos uma reserva
SELECT DISTINCT F.primeiro_nome, F.ultimo_nome, F.cargo
FROM Funcionario F
JOIN Reserva R ON F.id_funcionario = R.id_funcionario
WHERE F.cargo = 'recepcionista';

-- Listar recepcionistas que não efetuaram nenhuma reserva
SELECT F.primeiro_nome, F.ultimo_nome, F.cargo
FROM Funcionario F
LEFT JOIN Reserva R ON F.id_funcionario = R.id_funcionario
WHERE R.id_funcionario IS NULL AND F.cargo = 'recepcionista';

-- Listar dados de hóspedes que realizaram mais de uma reserva, incluindo informações do quarto e recepcionista
SELECT H.primeiro_nome, H.ultimo_nome, Q.numero_quarto, Q.tipo_quarto, F.primeiro_nome AS recepcionista
FROM Hospede H
JOIN Reserva R ON H.id_hospede = R.id_hospede
JOIN Quarto Q ON R.id_quarto = Q.id_quarto
JOIN Funcionario F ON R.id_funcionario = F.id_funcionario
GROUP BY H.id_hospede
HAVING COUNT(R.id_reserva) > 1;

-- Listar dados do hóspede com o maior número de reservas
SELECT H.primeiro_nome, H.ultimo_nome, COUNT(R.id_reserva) AS num_reservas
FROM Hospede H
JOIN Reserva R ON H.id_hospede = R.id_hospede
GROUP BY H.id_hospede
ORDER BY num_reservas DESC
LIMIT 1;

-- Listar dados do quarto mais reservado
SELECT Q.numero_quarto, Q.tipo_quarto, COUNT(R.id_reserva) AS num_reservas
FROM Quarto Q
JOIN Reserva R ON Q.id_quarto = R.id_quarto
GROUP BY Q.id_quarto
ORDER BY num_reservas DESC
LIMIT 1;

-- Listar o maior valor total de uma reserva (levando em consideração a diária, o período e o número de adultos)
SELECT R.id_reserva, H.primeiro_nome, H.ultimo_nome, 
       Q.numero_quarto, Q.tipo_quarto, 
       DATEDIFF(R.check_out, R.check_in) * Q.valor_diaria * R.num_adultos AS valor_total
FROM Reserva R
JOIN Quarto Q ON R.id_quarto = Q.id_quarto
JOIN Hospede H ON R.id_hospede = H.id_hospede
ORDER BY valor_total DESC
LIMIT 1;

-- Listar os quartos com o maior número de camas
SELECT Q.numero_quarto, Q.tipo_quarto, Q.qtd_camas
FROM Quarto
